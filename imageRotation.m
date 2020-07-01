% test: imageRotation
I=imread('copy1.jpg');
% step 1: rotate 20度
I1=imrotate(I,-20); 

% step 2: 分割
I_36c_r = imread('36c.png')
% step 3: 对称处理
I_36c_l = I_36c_r(:,end:-1:1,:)  % RGB影像
imshow(I_36c_l);

% step 4: 可视化
figure
subplot(1, 2, 1);
imshow(I_36c_l);
subplot(1, 2, 2);
imshow(I_36c_r);
figure
ha = tight_subplot(1,2,[.001 .001],[.1 .01],[.01 .01])
axes(ha(1)); 
imshow(I_36c_l);
axes(ha(2)); 
imshow(I_36c_r);
%           set(ha(1:4),'XTickLabel',''); set(ha,'YTickLabel','')





