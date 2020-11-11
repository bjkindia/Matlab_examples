clear %clearing work space
% look for sample file in the resipotary 
fid  = fopen('f3_V2_CHEMISTRY.TXT','r'); %input text file

data = textscan(fid,'%s');
fclose(fid);
Str = string(data{:});
% loop for the time steps
x = 1;
for i = 4:599:length(Str)
    f3_KT(x) = Str(i,:)
    x = x+1;
%      KT1(i+1) = KT;
end
f3_KT = str2double(f3_KT);
% this loop for pH values 
y = 1;
for j = 33:599:length(Str) 
f3_pH(y) = Str(j,:)
y = y+1;
end
f3_pH = str2double(f3_pH);
% this loop for conductvity 
z = 1;
for k = 35:599:length(Str) 
f3_con(z) = Str(k,:)
z = z+1;
end
f3_con = str2double(f3_con);
save('f3_pH_con.mat','f3_KT','f3_pH','f3_con')
