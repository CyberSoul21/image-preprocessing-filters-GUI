function C = convolucion(y1,R)
        M1=[1 1 1; 1 1 1; 1 1 1];
        A=y1;
        M=R.Width;
        N=R.Height;
        for i=1,M;
            for j=1,N;
                Y=255-A;
            end
        end
     
        % media aritmetica 
        Y1=A;
        for i=2,M-1;
            for j=2,N-1;
                Y1(i,j) = A(i-1,j-1)*M1(1,1)+A(i-1,j)*M1(1,2)+A(i-1,j+1)*M1(1,3)...
                    +A(i,j-1)*M1(2,1)+A(i,j)*M1(2,2)+A(i,j+1)*M1(2,3)...
                    +A(i+1,j-1)*M1(3,1)+A(i+1,j)*M1(3,2)+A(i+1,j+1)*M1(3,3);
            end
        end
        Y1=(1/9)*Y1;
        C=Y1;
end
       