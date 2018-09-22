function Tonos(arg)

if nargin == 0
   
    load tonoduales  
    n = length(data.sig);     % Total number of samples
   t = (0:n-1)/data.fs;      % Time for entire signal
   data = double(data.sig)/128; % Convert from signed 8 bit integers to doubles
   
   clf %Selecciona de la figura actual todos los objetos gráficos cuyos controladores no están ocultos 
   shg %hace visible la figura actual 
   
   ax.dialpad = axes ('pos',[.14 .46 .30 .50]);
    imagesc(D)
   colormap(gray)
   set(ax.dialpad,'tag','grSnal',...
      'userdata',[zeros(1,4) fix(10000*membranetx(1,1))],...
      'xtick',[],'xcolor',[1 1 1],'ytick',[],'ycolor',[1 1 1]);
  
     ax.signal = axes('pos',[.60 .60 .36 .25]);
   plot(t,y,'k')
   axis([min(t) max(t) -1 1])
   xlabel('t(secs)')
   set(ax.signal,'tag','signal','userdata',[t; y])

   ax.sample = axes('pos',[.10 .16 .36 .25]);
   axis([0 1/64 -5/4 5/4])
   xlabel('t(secs)')

   ax.power = axes('pos',[.60 .16 .36 .25]);
   axis([500 1700 0 600])
   xlabel('f(Hz)')
   title('Amplitud')

   set(gcf,'userdata',ax,'windowbuttonupfcn', ...
      'Tonos(get(gca,''tag''))')

   uicontrol('units','normal','pos',[.72,.88,.12,.06], ...
      'string','play all','callback','Tonos playall');
   uicontrol('units','normal','pos',[.38,.02,.12,.05], ...
      'string','help','callback','helpwin Tonos');
   uicontrol('units','normal','pos',[.52,.02,.12,.05], ...
      'string','close','callback','close(gcf)');
  
   %----------------------|EMPIEZA EL SONIDO|  -------------------------------------

 fF = [697 770 852 941];
 fC = [1209 1336 1477];  
 
 fs=32768; %definimos variable frecuencia de sampleo
 t=0:1/fs:0.25; %definimos la duracion de nuestro sonido
 

 %Samples

N = 256;
 %frecuencias de componentes
%ax =gca = devuelve los ejes o el gráfico actuales para la figura actua
% c = Columna = j
%f = Fila = k
cp = get(gca ,'currentpoint');
f = min(max(ceil(cp(1,2)/50),1),4);
c = min(max(ceil(cp(1,2)/50),1),4);
f = [fF(f) fC(c)]; %Definimos variable frecuecnia de columna nuestro sonido
p = [1/2 1/2];

ax = get();
ax = get(gcf,'userdata');
set(gcf,'currentaxes',ax.power)
plot([f;f],[0*p;p],'c-',f,p,'b.','markersize',16)
axis([500 1700 0 1])
set(gca,'xtick',[fR(f) fC(c)])
xlabel('f(Hz)')
title('Amplitude')


%Se superponen dos tonos senodoidales
lo = sin(2*pi*fF(f)*t);
hi = sin(2*pi*fC(c)*t);
data = (lo + hi)/2; %Data = y

%Señal de generador del sonido en la grafica

   set(gcf,'currentaxes',ax.sample)
   plot(t(1:512),data(1:512));
   axis([0 1/64 -5/4 5/4])
   xlabel('t(secs)')
   
   
%Restaura la señal de la grafica
set(gcf,'currentaxes',ax.signal)
   tdata = get(ax.signal,'userdata');
   plot(tdata(1,:),tdata(2,:),'k')
   axis([min(tdata(1,:)) max(tdata(1,:)) -1 1])
   xlabel('t(secs)')
   set(ax.signal,'tag','signal','userdata',tdata)



sonido(data,fs); 
end
 
% % para hacer un grafico de la onda de sonido
% sub_t=(t : 100);          %  Tomamos los 100 primeros puntos del vector t
% sub_x=data(1:100);  %  Tomamos los 100 primeros puntos del vector x
% stem(sub_t,sub_x);  % Graficamos
%-----------------------------------------------------------------------------------------------------------------------

 