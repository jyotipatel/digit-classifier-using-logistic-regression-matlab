fname = 'E:\coursera\kaggle\test.csv';

f = fopen(fname);

X = zeros([28001 784]);

tline = fgetl(f);

j = 0;

while 1

tline = fgetl(f);

tline = strrep(tline, 'NA', 'NaN');

if ~ischar(tline),   break,   end

j = j + 1;

X(j,:) = str2num(tline);

end

fclose(f);