function att4line(fid, strokeWieght, strokeColor, strokeOpacity, strokeStyle )

% strokeWieght : �� �β�, 3
% strokeColor : '#0000FF'
% strokeOpacity : 1
% strokeStyle : 'solid'

fprintf(fid, 'var polyline = new daum.maps.Polyline({ \n');
fprintf(fid, 'path: linePath, // ���� �����ϴ� ��ǥ�迭 �Դϴ� \n');
fprintf(fid, 'strokeWeight: %d, // ���� �β� �Դϴ� \n', strokeWieght);
fprintf(fid, 'strokeColor: ''%s'', // ���� �����Դϴ� \n', strokeColor);
fprintf(fid, 'strokeOpacity: %d, // ���� ������ �Դϴ� 1���� 0 ������ ���̸� 0�� �������� �����մϴ� \n', strokeOpacity);
fprintf(fid, 'strokeStyle: ''%s'' // ���� ��Ÿ���Դϴ� \n', strokeStyle);
fprintf(fid, '}); \n');
fprintf(fid, 'polyline.setMap(map) \n');

end
