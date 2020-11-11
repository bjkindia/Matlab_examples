# Matlab_examples
Simple Matlab examples with solutions

This code will read the text file in word by word and then it'll create an single vector
 after there are some loops will read the exact values (according to data you can modify)
 After extraction of values it'll write into new array/vector
clear
fid  = fopen('f3_V2_CHEMISTRY.TXT','r');
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
