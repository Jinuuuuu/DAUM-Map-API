function make_end(fid)
% fid : file id

fprintf(fid,'var zoomControl = new daum.maps.ZoomControl(); \n');
fprintf(fid,'map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT); \n');
fprintf(fid,'var mapTypeControl = new daum.maps.MapTypeControl(); \n');
fprintf(fid,'map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT); \n');
fprintf(fid,'</script> \n');
fprintf(fid,'</body> \n');
fprintf(fid,'</html> \n');

end





