function [Xtrans]=formatting_data(X)
%this function converts the kaggle data to the required data for our code

Xtrans=zeros(size(X));
m=size(X,1);
for i = 1:m
    temp=X(i,:);
    temp=reshape(temp,28,28);
    temp=temp';
    temp=temp(:);
    temp=temp';
    Xtrans(i,:)=temp;
end
end