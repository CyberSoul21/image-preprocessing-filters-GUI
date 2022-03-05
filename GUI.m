
function varargout = prueba(varargin)
% PRUEBA MATLAB code for prueba.fig
%      PRUEBA, by itself, creates a new PRUEBA or raises the existing
%      singleton*.
%
%      H = PRUEBA returns the handle to a new PRUEBA or the handle to
%      the existing singleton*.
%
%      PRUEBA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRUEBA.M with the given input arguments.
%
%      PRUEBA('Property','Value',...) creates a new PRUEBA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before prueba_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to prueba_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help prueba

% Last Modified by GUIDE v2.5 24-Nov-2014 02:33:52

% Begin initialization code - DO NOT EDIT


gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @prueba_OpeningFcn, ...
                   'gui_OutputFcn',  @prueba_OutputFcn, ...
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


% --- Executes just before prueba is made visible.
function prueba_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to prueba (see VARARGIN)

% Choose default command line output for prueba
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes prueba wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = prueba_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% bloque de definicion de mascaras

% llamado de imagen
IMG1 = imread('Azul_Natural.jpg');
IMG2 = imread('Azul_Blanca.jpg');
IMG3 = imread('Azul_Amarillo.jpg');
IMG4 = imread('Azul_Escaner.jpg');
IMG5 = imread('Naranja_Natural.jpg');
IMG6 = imread('Naranja_Blanca.jpg');
IMG7 = imread('Naranja_Amarillo.jpg');
IMG8 = imread('Naranja_Escaner.jpg');
global y1;
global R;
guidata(hObject, handles);
v=get(handles.popupmenu1,'value');

switch v
    case 1
        imshow(IMG1, 'Parent', handles.axes1);
        y1 = IMG1;       
        R=imfinfo('Azul_Natural.jpg');
    case 2
        imshow(IMG2, 'Parent', handles.axes1);
        y1 = IMG2;
        R=imfinfo('Azul_Blanca.jpg');
    case 3
        imshow(IMG3, 'Parent', handles.axes1);
        y1 = IMG3;
        R=imfinfo('Azul_Amarillo.jpg');
    case 4
        imshow(IMG4, 'Parent', handles.axes1);
        y1 = IMG4;
        R=imfinfo('Azul_Escaner.jpg');
    case 5
        imshow(IMG5, 'Parent', handles.axes1);
        y1 = IMG5;
        R=imfinfo('Naranja_Natural.jpg');
    case 6
        imshow(IMG6, 'Parent', handles.axes1);
        y1 = IMG6;
        R=imfinfo('Naranja_Blanca.jpg');
    case 7
        imshow(IMG7, 'Parent', handles.axes1);
        y1 = IMG7;
        R=imfinfo('Naranja_Amarillo.jpg');
    case 8
        imshow(IMG8, 'Parent', handles.axes1);
        y1 = IMG8;
        R=imfinfo('Naranja_Escaner.jpg');
end


% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
M1= (1/16)*[1 2 1; 2 4 2; 1 2 1];                               % smooth
M10=(1/8)*[1 2 1; 2 4 2; 1 2 1];                                % smooth modificado
M2= [-1 -1 -1; -1 9 -1; -1 -1 -1];                              % sharpen 
M3= [0 -1 0; -1 5 -1; 0 -1 0];                                  % sharpen2
M4= [-2 -2 -2; 0 0 0; 2 2 2];                                   % horiz_edge 
M5= [-2 0 2; -2 0 2; -2 0 2];                                   % vert_edge
M6= [0 -1 0; -1 4 -1; 0 -1 0];                                  % laplacian_edge
M7= [-1 -1 -1; -1 8 -1; -1 -1 -1];                              % laplacian_edge2
M8= [1 2 1; 0 0 0; -1 -2 -1] + 1/2*[-1 0 1; -2 0 2; -1 0 1];    % edge_detect
M9= [1 1 1; 0 0 0; -1 -1 -1] + 1/2*[-1 0 1; -1 0 1; -1 0 1];    % edge_detect2

M13=(1/8)*[1 2 1; 2 4 2; 1 2 1]; %sharpen modificada Letra naranja, luz
                                                              %amarilla 2
M11=(1/8)*[2.8 1 2; 1.5 6 1.5; 2.8 1 -1];%sharpen modficada Letra azul, luz amarilla
M12=(1/9)*[2 2 2;2 2 2;1 2 -4];%smooth modificada Letra naranja, luz
%amarilla 1era etapa


global filtro;
global y1;
global y2;
global C;
global R;
% llamado de imagen


switch filtro
    case 1
        S1= imfilter(y1,M1);
        imshow(S1, 'Parent', handles.axes2);
        y2=S1;
        C=convolucion(y1,R);
        imshow(C, 'Parent', handles.axes3);
       
    case 2
        S1= imfilter(y1,M10);
        imshow(S1, 'Parent', handles.axes2);
        y2=S1;
        C=convolucion(y1,R);
        imshow(C, 'Parent', handles.axes3);
    case 3
        S1= imfilter(y1,M2);
        imshow(S1, 'Parent', handles.axes2);
        y2=S1;
        C=convolucion(y1,R);
        imshow(C, 'Parent', handles.axes3);
    case 4
        S1= imfilter(y1,M3);
        imshow(S1, 'Parent', handles.axes2);
        y2=S1;
        C=convolucion(y1,R);
        imshow(C, 'Parent', handles.axes3);
    case 5
        S1= imfilter(y1,M4);
        imshow(S1, 'Parent', handles.axes2);
        y2=S1;
        C=convolucion(y1,R);
        imshow(C, 'Parent', handles.axes3);
    case 6
        S1= imfilter(y1,M5);
        imshow(S1, 'Parent', handles.axes2);
        y2=S1;
        C=convolucion(y1,R);
        imshow(C, 'Parent', handles.axes3);
    case 7
        S1= imfilter(y1,M6);
        imshow(S1, 'Parent', handles.axes2);
        y2=S1;
        C=convolucion(y1,R);
        imshow(C, 'Parent', handles.axes3);
    case 8
        S1= imfilter(y1,M7);
        imshow(S1, 'Parent', handles.axes2);
        y2=S1;
        C=convolucion(y1,R);
        imshow(C, 'Parent', handles.axes3);
    case 9
        S1= imfilter(y1,M8);
        imshow(S1, 'Parent', handles.axes2);
        y2=S1;
        C=convolucion(y1,R);
        imshow(C, 'Parent', handles.axes3);
    case 10
        S1= imfilter(y1,M9);
        imshow(S1, 'Parent', handles.axes2);
        y2=S1;
        C=convolucion(y1,R);
        imshow(C, 'Parent', handles.axes3);
    case 11
        S2=rgb2gray(y1);
        S3=imfilter(S2,M11);
        imshow(S3, 'Parent', handles.axes2);
        y2=S3;
        C=convolucion(y1,R);
        imshow(C, 'Parent', handles.axes3);
     case 12
        S2=rgb2gray(y1);
        S3=imfilter(S2,M12);
        imshow(S3, 'Parent', handles.axes2);
        y2=S3;
        C=convolucion(y1,R);
        imshow(C, 'Parent', handles.axes3);
     case 13
        S2=rgb2gray(y1);
        S3=imfilter(S2,M13);
        imshow(S3, 'Parent', handles.axes2);
        y2=S3;
        C=convolucion(y1,R);
        imshow(C, 'Parent', handles.axes3);
end



% --- Executes when selected object is changed in uipanel1.
function uipanel1_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel1 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
global filtro;
if hObject == handles.radiobutton1
    filtro=1;
end
if hObject == handles.radiobutton2
    filtro=2;
end
if hObject == handles.radiobutton3
    filtro=3;
end
if hObject == handles.radiobutton4
    filtro=4;
end
if hObject == handles.radiobutton5
    filtro=5;
end
if hObject == handles.radiobutton6
    filtro=6;
end
if hObject == handles.radiobutton7
    filtro=7;
end
if hObject == handles.radiobutton8
    filtro=8;
end
if hObject == handles.radiobutton9
    filtro=9;
end
if hObject == handles.radiobutton10
    filtro=10;
end
if hObject == handles.radiobutton11
    filtro=11;
end
if hObject == handles.radiobutton12
    filtro=12;
end
if hObject == handles.radiobutton13
    filtro=13;
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y2;

%imwrite(y2,'C:\Users\USER\Desktop\IMAGENE\Wilson\image.jpg');

axes(handles.axes2);
[FileName, PathName] = uiputfile('*jpg', 'Save As');
Name = fullfile(PathName, FileName);
imwrite(y2, Name, 'jpg');

% --------------------------------------------------------------------
function uipushtool1_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uipushtool1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y2;
axes(handles.axes2);
[FileName, PathName] = uiputfile('*jpg', 'Save As');
Name = fullfile(PathName, FileName);
imwrite(y2, Name, 'jpg');
