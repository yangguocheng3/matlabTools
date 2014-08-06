function varargout = Scaling_Factor_Tool_GUI(varargin)
% SCALING_FACTOR_TOOL_GUI M-file for Scaling_Factor_Tool_GUI.fig
%      SCALING_FACTOR_TOOL_GUI, by itself, creates a new SCALING_FACTOR_TOOL_GUI or raises the existing
%      singleton*.
%
%      H = SCALING_FACTOR_TOOL_GUI returns the handle to a new SCALING_FACTOR_TOOL_GUI or the handle to
%      the existing singleton*.
%
%      SCALING_FACTOR_TOOL_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SCALING_FACTOR_TOOL_GUI.M with the given input arguments.
%
%      SCALING_FACTOR_TOOL_GUI('Property','Value',...) creates a new SCALING_FACTOR_TOOL_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Scaling_Factor_Tool_GUI_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Scaling_Factor_Tool_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help Scaling_Factor_Tool_GUI

% Last Modified by GUIDE v2.5 14-May-2009 10:10:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Scaling_Factor_Tool_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Scaling_Factor_Tool_GUI_OutputFcn, ...
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


% --- Executes just before Scaling_Factor_Tool_GUI is made visible.
function Scaling_Factor_Tool_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Scaling_Factor_Tool_GUI (see VARARGIN)

% Choose default command line output for Scaling_Factor_Tool_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Scaling_Factor_Tool_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Scaling_Factor_Tool_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% Populate standard material list
mat_list={...
    'Custom'
    'Aluminum';
    'Copper';
    'Brass';
    'Silver';
    'INVAR'};

set(handles.material_list,'String',mat_list);

function T_lo_Callback(hObject, eventdata, handles)
% hObject    handle to T_lo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T_lo as text
%        str2double(get(hObject,'String')) returns contents of T_lo as a double


% --- Executes during object creation, after setting all properties.
function T_lo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T_lo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function T_hi_Callback(hObject, eventdata, handles)
% hObject    handle to T_hi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T_hi as text
%        str2double(get(hObject,'String')) returns contents of T_hi as a double


% --- Executes during object creation, after setting all properties.
function T_hi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T_hi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in material_list.
function material_list_Callback(hObject, eventdata, handles)
% hObject    handle to material_list (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns material_list contents as cell array
%        contents{get(hObject,'Value')} returns selected item from material_list

mat_index=get(handles.material_list,'Value');

% index,name,temp_coefficient
material_list={...
    '1','Custom','';
    '2','Aluminum','23*10^-6';
    '3','Copper','17*10^-6';
    '4','Brass','18*10^-6';
    '5','Silver','20*10^-6';
    '6','INVAR','1.18*10^-6'};
set(handles.temp_co,'String',material_list{mat_index,3});

test=1;

% --- Executes during object creation, after setting all properties.
function material_list_CreateFcn(hObject, eventdata, handles)
% hObject    handle to material_list (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function temp_co_Callback(hObject, eventdata, handles)
% hObject    handle to temp_co (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of temp_co as text
%        str2double(get(hObject,'String')) returns contents of temp_co as a double


% --- Executes during object creation, after setting all properties.
function temp_co_CreateFcn(hObject, eventdata, handles)
% hObject    handle to temp_co (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get Temp Range and Temp Coefficient
T_lo=str2double(get(handles.T_lo,'String'));
T_hi=str2double(get(handles.T_hi,'String'));
temp_co=str2num(get(handles.temp_co,'String'));

% Calculate Scaling Range
scale_lo=temp_co*(T_lo-20);
set(handles.scale_lo,'String',num2str(scale_lo));
scale_hi=temp_co*(T_hi-20);
set(handles.scale_hi,'String',num2str(scale_hi));

test=1;

function scale_lo_Callback(hObject, eventdata, handles)
% hObject    handle to scale_lo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of scale_lo as text
%        str2double(get(hObject,'String')) returns contents of scale_lo as a double


% --- Executes during object creation, after setting all properties.
function scale_lo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to scale_lo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function scale_hi_Callback(hObject, eventdata, handles)
% hObject    handle to scale_hi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of scale_hi as text
%        str2double(get(hObject,'String')) returns contents of scale_hi as a double


% --- Executes during object creation, after setting all properties.
function scale_hi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to scale_hi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

