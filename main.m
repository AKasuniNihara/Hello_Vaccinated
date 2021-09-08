% Read vaccine card image
I = imread('card.jpg');
subplot(3,3,1),imshow(I),title('Original image');
%Identify vaccine slots
J = I(125:204,171:345,:);
subplot(3,3,2),imshow(J),title('Vaccine slots');
%convert RGB image into gray
G = rgb2gray(J);
subplot(3,3,3),imshow(G),title('Gray image');
%adjust intensity values
H = imadjust(G,[0.2 0.9],[]);
subplot(3,3,4),imshow(H),title('Adjust image');
%convert image inro binary
BW = im2bw(H);
subplot(3,3,5),imshow(BW),title('Binary image');
%Take 1st and 2nd dose as 2 images
D1 = BW(7:39,5:170);
subplot(3,3,6),imshow(D1),title('1st Dose');
D2 = BW(47:77,5:170);
subplot(3,3,7),imshow(D2),title('2nd Dose');
%check objects
[L1,N1] = bwlabel(D1,4);
N1;
[L2,N2] = bwlabel(D2,4);
N2;