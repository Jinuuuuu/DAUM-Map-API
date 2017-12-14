function make_header(fid, width, height, cen, key)
% fid : file id
% width : width value (unit : %, recommend : 100)
% height : height value (unit : px, recommend : 850)
% cen : center pos, ([lat, lon])
% key : Daum api key ('85b32471aedcb298d750fe34655600a6', Jinwoo, 2017.05.24 ����)

fprintf(fid, '<!DOCTYPE html>\n');
fprintf(fid, '<html>\n');
fprintf(fid, '<head>\n');
fprintf(fid, '<meta charset="UTF-8"> <title>Daum_api_%s</title>\n', date);
fprintf(fid, '</head>\n');
fprintf(fid, '<body>\n');
fprintf(fid, '<div id="map" style="width:%d%%;height:%dpx;"></div>\n', width, height);
fprintf(fid, '<script type="text/javascript" src="http://apis.daum.net/maps/maps3.js?apikey=%s"></script>', key);
fprintf(fid, '<script>\n');
fprintf(fid, 'var mapContainer = document.getElementById(''map''), // ������ ǥ���� div\n');
fprintf(fid, ' mapOption = {  \n');
fprintf(fid, ' center: new daum.maps.LatLng(%f,   %f), // ������ �߽���ǥ \n', cen(1),cen(2));
fprintf(fid, ' level: 5 // ������ Ȯ�� ���� \n');
fprintf(fid, '};  \n');
fprintf(fid, 'var map = new daum.maps.Map(mapContainer, mapOption); // ������ �����մϴ�  \n');
fprintf(fid, 'map.addOverlayMapTypeId(daum.maps.MapTypeId.TERRAIN); \n');

end