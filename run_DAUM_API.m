%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title : run_DAUM_API
%
% Description : 
% - ��ġ �����͸� �Է¹޾� Daum API�� HTML ���� ���·� ���
% - Daum API User Key�� �Ҵ� �޾� ����� ��!
%
% Written by : Jinwoo Jung
% Last updated : 2017/05/24
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
close all;
clc;
format long g
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ����� �Է°�
fprintf('run_DAUM_API   by Jinwoo \n');
% marker
marker_address='http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png';  % basic marker
%marker_address='file:///D:/Matlab_code/ToolBox/DAUM_API/image/P_r.png'; % EX of custom marker
%marker_size=[24 40];
marker_size=[24 40];
% --------------------color HEX code----------------------
%             red : '#FF0000'
%             blue : '#0000FF'
%             green : '#08FF00'
%             yello : '#FAFF00'
%             cyan : '#00FFFF'
% ---------------------------------------------------------
% line
strokeWieght=3; strokeColor='#0000FF'; strokeOpacity=1; strokeStyle='solid';

width=100; height=850; % �������� ũ��
cen= [35.689221,   128.466964];% ȭ�� �߽��� ��ǥ

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
interval_marker=1; % �����͸� ����� ���� ����, �߿�!
interval_line=1; % �����͸� ����� ���� ����, �߿�!
type=[1 0]; % [marker, line]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

key='85b32471aedcb298d750fe34655600a6'; % Daum API User Key (������ �ٲ����!!, by Jinwoo, 17.05.24)

marker_pos=[];line_pos=[];

if isempty(marker_pos)
    marker_pos=load('pos.txt');
end
if isempty(line_pos)
     line_pos=load('pos.txt'); % �о�� ��ġ ������
 end

fid=fopen('test.html','wt'); % ��µǴ� ���ϸ� �� path

%% API �ۼ�
% ��� ���� ����
make_header(fid, width, height, cen, key);


if type(1) == 1
    conv4marker(fid, marker_pos(:,1:2),interval_marker);
    att4marker(fid, marker_address, marker_size);
    fprintf('Marker ���� �Ϸ�! \n');
end

if type(2) == 1
    conv4line(fid, line_pos(:,1:2), interval_line);
    att4line(fid, strokeWieght, strokeColor, strokeOpacity, strokeStyle );
    fprintf('Line ���� �Ϸ�! \n');
end

% end ���� ����
make_end(fid);
% close file
fclose(fid);
fprintf('Finished! \n');















