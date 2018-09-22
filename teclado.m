%-----------------------------------------------------------------------------------------------------------------------
function varargout = teclado(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @teclado_OpeningFcn, ...
                   'gui_OutputFcn',  @teclado_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);

if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT
%-----------------------------------------------------------------------------------------------------------------------


%-----------------------------------------------------------------------------------------------------------------------
function teclado_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject
guidata(hObject, handles);
handles.counter=0 %Asignas el valor inicial a tu contador de 0
guidata(hObject, handles) %Guardas el handle 
handles.A=[]; %Creas el handle de A en forma de vector vacío para concatenarle horizontalmente los valores del contador
guidata(hObject, handles)
%-----------------------------------------------------------------------------------------------------------------------


%-----------------------------------------------------------------------------------------------------------------------
function varargout = teclado_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;
%-----------------------------------------------------------------------------------------------------------------------


%-----------------------------------------------------------------------------------------------------------------------
function bt1_Callback(hObject, eventdata, handles)
%-----------------------------------------------------------------------------------------------------------------------

%-----------------------------------------------------------------------------------------------------------------------
function bt2_Callback(hObject, eventdata, handles)
%-----------------------------------------------------------------------------------------------------------------------


%-----------------------------------------------------------------------------------------------------------------------
function bt3_Callback(hObject, eventdata, handles)
%-----------------------------------------------------------------------------------------------------------------------


%-----------------------------------------------------------------------------------------------------------------------
function bt4_Callback(hObject, eventdata, handles)
%-----------------------------------------------------------------------------------------------------------------------


%-----------------------------------------------------------------------------------------------------------------------.
function bt5_Callback(hObject, eventdata, handles)
%-----------------------------------------------------------------------------------------------------------------------


%-----------------------------------------------------------------------------------------------------------------------
function bt6_Callback(hObject, eventdata, handles)
%-----------------------------------------------------------------------------------------------------------------------


%-----------------------------------------------------------------------------------------------------------------------
function bt7_Callback(hObject, eventdata, handles)
%-----------------------------------------------------------------------------------------------------------------------


%-----------------------------------------------------------------------------------------------------------------------
function bt8_Callback(hObject, eventdata, handles)
%-----------------------------------------------------------------------------------------------------------------------


%-----------------------------------------------------------------------------------------------------------------------
function bt9_Callback(hObject, eventdata, handles)
%-----------------------------------------------------------------------------------------------------------------------


%-----------------------------------------------------------------------------------------------------------------------
function btAste_Callback(hObject, eventdata, handles)
%-----------------------------------------------------------------------------------------------------------------------


%-----------------------------------------------------------------------------------------------------------------------
function bt0_Callback(hObject, eventdata, handles)
%-----------------------------------------------------------------------------------------------------------------------


%-----------------------------------------------------------------------------------------------------------------------
function btNum_Callback(hObject, eventdata, handles)
%-----------------------------------------------------------------------------------------------------------------------


%-----------------------------------------------------------------------------------------------------------------------
function  figure1_CloseRequestFcn(hObject, eventdata, handles)
opc=questdlg('¿Desea salir del programa?','SALIR','Si','No','No'); 
if strcmp(opc,'No') 
return; 
end
delete(hObject); 
%-----------------------------------------------------------------------------------------------------------------------

%-----------------------------------------------------------------------------------------------------------------------
% --- Executes on button press in informacion.
%function msg_Callback(hObject, eventdata, handles)
%msgbox({'Marcacion de numeros telefonicos por:         
%.','Ingrid Carmona Diaz','Daniela Diaz Bejarano','Marlon Marin Barco','Alejandro Oyuela Bolanos'},'Bienvenido');
%-----------------------------------------------------------------------------------------------------------------------



%-----------------------------------------------------------------------------------------------------------------------

function tbTextInput_Callback(hObject, eventdata, handles)


function tbTextInput_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%-----------------------------------------------------------------------------------------------------------------------


%-----------------------------------------------------------------------------------------------------------------------
function txTextIng_Callback(hObject, eventdata, handles)


function txTextIng_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%-----------------------------------------------------------------------------------------------------------------------


%-----------------------------------------------------------------------------------------------------------------------
function txRutaAudioInp_Callback(hObject, eventdata, handles)

function txRutaAudioInp_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','Red');
end
%-----------------------------------------------------------------------------------------------------------------------

%-----------------------------------------------------------------------------------------------------------------------
% --- Executes on button press in btExaminar.
function btExaminar_Callback(hObject, eventdata, handles)
%-----------------------------------------------------------------------------------------------------------------------


%-----------------------------------------------------------------------------------------------------------------------
% --- Executes on button press in btSubir.
function btSubir_Callback(hObject, eventdata, handles)
%-----------------------------------------------------------------------------------------------------------------------

%-----------------------------------------------------------------------------------------------------------------------
% --- Executes on button press in btMic.
function btMic_Callback(hObject, eventdata, handles)

function btMic_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to btMic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%-----------------------------------------------------------------------------------------------------------------------


%-----------------------------------------------------------------------------------------------------------------------
function sonido(arg)
% c = Columna = j
%f = Fila = k
switch s
    case '*',  f = 4 ; c = 1;
    case '0',  f = 4 ; c = 2;
    case '#', f = 4 ; c = 3;        
    case '1',  f = 1 ; c = 1;
    case '2',  f = 1 ; c = 2;
    case '3',  f = 1 ; c = 3;        
    case '4', f = 2 ; c = 1;
    case '5', f = 2 ; c = 2;
    case '6', f = 2 ; c = 3;      
    case '7', f = 3 ; c = 1;
    case '8', f = 3 ; c = 2;
    case '9', f = 3 ; c = 3;
    otherwise
        
        d = s  - '0';
        c = mod(d - 1,3) + 1;
        f = (d-c)/3+1;
end


