function KLD = evalKLDiv_grid(W,X,ydim,p1)
%function KLD = evalKLDiv_mo(W,X,Y,k)




xdim= size(X, 2);
%ydim= size(W, 2);

WMat= reshape(W, xdim, ydim);
Yhat = X*WMat;
%Yhat=normal(Yhat);

p2=prob_grid(Yhat);

KLD=p1'*log(p1./p2);
%dMatT=getDist(Y,Yhat);
%[sdMatT,~]=sort(dMatT);

%[~,sdMat]= knnsearch(Yhat, Y, 'K', k);

%rhoYhat=sdMat(:,end);
%KLD = mean( log( rhoYhat ./ rhoY ) );
%KLD = mean( log( rhoYhat) );
end