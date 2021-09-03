function varargout = maingui1(varargin)
% MAINGUI1 MATLAB code for maingui1.fig
%      MAINGUI1, by itself, creates a new MAINGUI1 or raises the existing
%      singleton*.
%
%      H = MAINGUI1 returns the handle to a new MAINGUI1 or the handle to
%      the existing singleton*.
%
%      MAINGUI1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAINGUI1.M with the given input arguments.
%
%      MAINGUI1('Property','Value',...) creates a new MAINGUI1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before maingui1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to maingui1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help maingui1

% Last Modified by GUIDE v2.5 03-Sep-2021 13:04:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @maingui1_OpeningFcn, ...
    'gui_OutputFcn',  @maingui1_OutputFcn, ...
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


% --- Executes just before maingui1 is made visible.
function maingui1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to maingui1 (see VARARGIN)

% Choose default command line output for maingui1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes maingui1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = maingui1_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%global currentOfT;
%if isempty(currentOfT)
%    currentOfT=[1];
%end
%currentOfT=[currentOfT currentOfT(end)+1];
%plot(currentOfT,currentOfT);
clear global


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.text2,'string',get(hObject,'Value'));

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
edit_text_only_numb(hObject);
calc_tau();


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
edit_text_only_numb(hObject);
calc_tau();


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit_text_only_numb(hObject)
% hObject gui obj.

% Hint: warndlg if edit text is not double
stredit1=get(hObject,'String');
if isnan(str2double(stredit1))
    set(hObject,'String','0');
    warndlg('Input must be numerical');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Ghandles_axes1;
Ghandles_axes1=handles.axes1;
global Ghandles_axes2;
Ghandles_axes2=handles.axes2;
global Ghandles;
global my_timer;
global hplot1;
%global H_1;
global H_2;
%axis(Ghandles_axes1);
hplot1=plot(Ghandles_axes1,NaN,NaN);
legend(Ghandles_axes1,"current",'Location','southwest');
%axis(Ghandles_axes2);
%H_1=plot(Ghandles_axes2,NaN,NaN);
H_2=plot(Ghandles_axes2,NaN,NaN,NaN,NaN);
legend(Ghandles_axes2,"Inductor voltage","Input power supply voltage",'Location','southwest');
global intg;
intg=0;
calc_tau();
if (~isnan(str2double(get(handles.edit3,'String'))))&&((str2double(get(handles.edit3,'String')))>0.001)
    my_timer = loopeveryone(str2double(get(handles.edit3,'String')));
else
    my_timer = loopeveryone(0.1);
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global my_timer;
stop(my_timer);


function a = loopeveryone(simulator_sampling_rate)
% simulator_sampling_rate   simulator sampling rate in seconed

% Hint: see myfun to callback

%https://www.mathworks.com/matlabcentral/answers/75125-how-to-run-a-for-loop-every-one-second
a = timer('ExecutionMode','fixedRate','Period',simulator_sampling_rate,'TimerFcn',@myfun);
start(a);


function myfun(obj,evt)
global Ghandles;
global Ghandles_axes1;
global Ghandles_axes2;
global vv;
global vofl;
global pwmcount;
if isempty(pwmcount)
    pwmcount=0;
end
if get(Ghandles.checkbox1,'Value')
    pwmt=calc_tau();
    pwmhp=get(Ghandles.slider2,'Value');
    if pwmcount>pwmt
        pwmcount=0;
        set(Ghandles.slider1,'Value',45);
    end
    pwmhc=pwmt*pwmhp;
    if pwmcount>pwmhc
        set(Ghandles.slider1,'Value',5);
    end
    pwmcount=pwmcount+1;
end
%for i=1:3
%    disp(datestr(now));
%end
%disp('===============');
global currentOfT;
global currentOfT_x;
global intg;
if isempty(currentOfT)
    currentOfT=[0];
end
if isempty(currentOfT_x)
    currentOfT_x=[0];
end
if isempty(vv)
    vv=[0];
end
if isempty(vofl)
    vofl=[0];
end
vv=[vv get(Ghandles.slider1,'Value')];
var_maxPlotX=round(str2double(get(Ghandles.edit4,'String')));
%if size(currentOfT_x,2)>=round(str2double(get(Ghandles.edit4,'String')))
%    var_diff=size(currentOfT_x,2)-round(str2double(get(Ghandles.edit4,'String')));
%    currentOfT_x=currentOfT_x(2+var_diff:end);
%end
%if size(currentOfT,2)>=round(str2double(get(Ghandles.edit4,'String')))
%    var_diff=size(currentOfT,2)-round(str2double(get(Ghandles.edit4,'String')));
%    currentOfT=currentOfT(2+var_diff:end);
%end
var_a=str2double(get(Ghandles.edit1,'String'));
var_b=str2double(get(Ghandles.edit2,'String'));
var_t=currentOfT_x(end)*str2double(get(Ghandles.edit3,'String'));
currentOfT_x=[currentOfT_x currentOfT_x(end)+1];
intg=intg+(exp(var_b*var_t/var_a))*get(Ghandles.slider1,'Value');
global my_timer;
%global H_1;
global H_2;
if isinf(intg)
stop(my_timer);
end
var_newpoint=(intg/var_a)*(exp((-1)*var_b*var_t/var_a));
currentOfT=[currentOfT var_newpoint];
set(Ghandles.text7,'string',intg);
global hplot1;
vofl=[vofl (currentOfT(end)-currentOfT(size(currentOfT,2)-1))*var_a];
if(size(currentOfT_x,2)==size(currentOfT,2))
    %axis(Ghandles_axes1);
    if size(currentOfT_x,2)>round(str2double(get(Ghandles.edit4,'String')))
        set(hplot1,'XData',currentOfT_x((size(currentOfT_x,2)-var_maxPlotX):end),'YData',currentOfT((size(currentOfT,2)-var_maxPlotX):end));
     set(H_2(2),'XData',currentOfT_x((size(currentOfT_x,2)-var_maxPlotX):end),'YData',vv((size(vv,2)-var_maxPlotX):end));
     set(H_2(1),'XData',currentOfT_x,'YData',vofl((size(vofl,2)-var_maxPlotX):end));
    else
        set(hplot1,'XData',currentOfT_x,'YData',currentOfT);
            set(H_2(2),'XData',currentOfT_x,'YData',vv);
            set(H_2(1),'XData',currentOfT_x,'YData',vofl);
    end
    %axis(Ghandles_axes2);
    %set(H_1,'XData',currentOfT_x,'YData',currentOfT);
    %set(H_2(1),'XData',currentOfT_x,'YData',currentOfT);
    %set(H_2(2),'XData',currentOfT_x,'YData',currentOfT_x);
else
    tmp_error_log=sprintf("ERROR!!! \t size of currentOfT_x=%d and currentOfT=%d is different...",size(currentOfT_x,2),size(currentOfT,2));
    disp(tmp_error_log);
end


function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double
edit_text_only_numb(hObject);
calc_tau();

% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double
edit_text_only_numb(hObject);


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in .heckbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1

function tau=calc_tau()
global Ghandles;
if get(Ghandles.checkbox1,'Value')
var_l=str2double(get(Ghandles.edit1,'String'));
var_r=str2double(get(Ghandles.edit2,'String'));
var_ar=str2double(get(Ghandles.edit3,'String'));
tau=(var_l/var_r)*5.0*(1.0/var_ar);
set(Ghandles.text10,"String",tau);
else
    tau=0;
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Ghandles;
Ghandles=handles;