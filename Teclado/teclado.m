
function varargout = teclado(varargin)
% TECLADO MATLAB code for teclado.fig
%      TECLADO, by itself, creates a new TECLADO or raises the existing
%      singleton*.
%
%      H = TECLADO returns the handle to a new TECLADO or the handle to
%      the existing singleton*.
%
%      TECLADO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TECLADO.M with the given input arguments.
%
%      TECLADO('Property','Value',...) creates a new TECLADO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before teclado_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to teclado_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help teclado

% Last Modified by GUIDE v2.5 08-Sep-2018 16:57:50

% Begin initialization code - DO NOT EDIT

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



% --- Executes just before teclado is made visible.
function teclado_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to teclado (see VARARGIN)
% Choose default command line output for teclado
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

handles.counter=0 %Asignas el valor inicial a tu contador de 0

guidata(hObject, handles) %Guardas el handle 

handles.A=[]; %Creas el handle de A en forma de vector vacío para concatenarle horizontalmente los valores del contador

guidata(hObject, handles)

% UIWAIT makes teclado wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = teclado_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in bt1.
function bt1_Callback(hObject, eventdata, handles)
% hObject    handle to bt1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
  fprintf('\n bt1 \n')


% --- Executes on button press in bt2.
function bt2_Callback(hObject, eventdata, handles)
% hObject    handle to bt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fprintf('\n bt2')

handles.counter = handles.counter + 1;
guidata(hObject, handles)

switch handles.counter
    case 1
        fprintf('\n a \n');
        handles.counter ==0;
    case 2
        fprintf('\n b \n');
        handles.counter =0;
    case 3
        fprintf('\n c \n');
       handles.counter =0;
    case 4
        fprintf('\n 2 \n');
        handles.counter =0;
end

% --- Executes on button press in bt3.
function bt3_Callback(hObject, eventdata, handles)
% hObject    handle to bt3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fprintf('\n bt3 \n')

% --- Executes on button press in bt4.
function bt4_Callback(hObject, eventdata, handles)
% hObject    handle to bt4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fprintf('\n bt4 \n')

% --- Executes on button press in bt5.
function bt5_Callback(hObject, eventdata, handles)
% hObject    handle to bt5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fprintf('\n bt5 \n')

% --- Executes on button press in bt6.
function bt6_Callback(hObject, eventdata, handles)
% hObject    handle to bt6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fprintf('\n b6 \n')

% --- Executes on button press in bt7.
function bt7_Callback(hObject, eventdata, handles)
% hObject    handle to bt7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fprintf('\n bt7 \n')

% --- Executes on button press in bt8.
function bt8_Callback(hObject, eventdata, handles)
% hObject    handle to bt8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fprintf('\n bt8 \n')

% --- Executes on button press in bt9.
function bt9_Callback(hObject, eventdata, handles)
% hObject    handle to bt9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fprintf('\n bt9 \n')

% --- Executes on button press in btAste.
function btAste_Callback(hObject, eventdata, handles)
% hObject    handle to btAste (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fprintf('\n bt* \n')

% --- Executes on button press in bt0.
function bt0_Callback(hObject, eventdata, handles)
% hObject    handle to bt0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fprintf('\n bt0 \n')

% --- Executes on button press in btNum.
function btNum_Callback(hObject, eventdata, handles)
% hObject    handle to btNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fprintf('\n bt# \n')

% --- Executes when user attempts to close figure1.
function  figure1_CloseRequestFcn(hObject, eventdata, handles)
opc=questdlg('¿Desea salir del programa?','SALIR','Si','No','No'); 
if strcmp(opc,'No') 
return; 
end
delete(hObject); 

% --- Executes on button press in informacion.
%function msg_Callback(hObject, eventdata, handles)
%msgbox({'Marcacion de numeros telefonicos por:         .','Ingrid Carmona Diaz','Daniela Diaz Bejarano','Marlon Marin Barco','Alejandro Oyuela Bolanos'},'Bienvenido');
