
function origin_result = RCM38_convert(x)
x_origin = [];

G = [   2.0336507971433414e+02  -5.3956475914255392e+01  -2.7088978087868369e+01  -2.0336507971375815e+02   5.3956475914255392e+01   2.7088978087868369e+01   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00;
       -5.3956475914255392e+01   2.3398757254504045e+02  -8.6283054943635207e+01   5.3956475914255392e+01  -2.3398757253928045e+02   8.6283054943635207e+01   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00;
       -2.7088978087868366e+01  -8.6283054943635207e+01   2.2201347979167249e+02   2.7088978087868366e+01   8.6283054943635207e+01  -2.2201347979109650e+02   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00;
       -2.0336507971375815e+02   5.3956475914255392e+01   2.7088978087868369e+01   9.6523494572590857e+02  -2.1701526742738102e+02  -1.1958512736147634e+02  -4.0673015942751630e+02   1.0791295182851078e+02   5.4177956175736739e+01   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -3.5513970658463421e+02   5.5145839684614856e+01   3.8318193097871237e+01;
        5.3956475914255392e+01  -2.3398757253928045e+02   8.6283054943635207e+01  -2.1701526742738102e+02   1.0650133220777063e+03  -3.3574578008216434e+02   1.0791295182851078e+02  -4.6797514507856090e+02   1.7256610988727041e+02   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   5.5145839684614856e+01  -3.6305060445986504e+02   7.6896615251258694e+01;
        2.7088978087868366e+01   8.6283054943635207e+01  -2.2201347979109650e+02  -1.1958512736147634e+02  -3.3574578008216429e+02   1.0272843110747488e+03   5.4177956175736732e+01   1.7256610988727041e+02  -4.4402695958219300e+02   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   3.8318193097871237e+01   7.6896615251258680e+01  -3.6124387170145928e+02;
        0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -4.0673015942751630e+02   1.0791295182851078e+02   5.4177956175736739e+01   8.1346031885503260e+02  -2.1582590365702157e+02  -1.0835591235147348e+02  -4.0673015942751630e+02   1.0791295182851078e+02   5.4177956175736739e+01   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00;
        0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   1.0791295182851078e+02  -4.6797514507856090e+02   1.7256610988727041e+02  -2.1582590365702157e+02   9.3595029015712180e+02  -3.4513221977454083e+02   1.0791295182851078e+02  -4.6797514507856090e+02   1.7256610988727041e+02   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00;
        0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   5.4177956175736732e+01   1.7256610988727041e+02  -4.4402695958219300e+02  -1.0835591235147346e+02  -3.4513221977454083e+02   8.8805391916438600e+02   5.4177956175736732e+01   1.7256610988727041e+02  -4.4402695958219300e+02   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00;
        0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -4.0673015942751630e+02   1.0791295182851078e+02   5.4177956175736739e+01   4.0673015942751630e+02  -1.0791295182851078e+02  -5.4177956175736739e+01   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00;
        0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   1.0791295182851078e+02  -4.6797514507856090e+02   1.7256610988727041e+02  -1.0791295182851078e+02   4.6797514507856090e+02  -1.7256610988727041e+02   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00;
        0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   5.4177956175736732e+01   1.7256610988727041e+02  -4.4402695958219300e+02  -5.4177956175736732e+01  -1.7256610988727041e+02   4.4402695958219300e+02   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00;
        0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -3.5513970658463421e+02   5.5145839684614856e+01   3.8318193097871237e+01   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   3.5513970658463421e+02  -5.5145839684614856e+01  -3.8318193097871237e+01;
        0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   5.5145839684614856e+01  -3.6305060445986504e+02   7.6896615251258694e+01   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -5.5145839684614856e+01   3.6305060445986504e+02  -7.6896615251258694e+01;
        0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   3.8318193097871237e+01   7.6896615251258680e+01  -3.6124387170145928e+02   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -3.8318193097871237e+01  -7.6896615251258680e+01   3.6124387170145928e+02];
B = [  -3.5113004928555353e+02   4.3573978441589354e+01   3.1816722979531573e+01   3.5113004928555353e+02  -4.3573978441589354e+01  -3.1816722979531573e+01   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00;
        4.3573978441589354e+01  -3.5377814658607412e+02   5.8917529889855743e+01  -4.3573978441589354e+01   3.5377814658607412e+02  -5.8917529889855743e+01   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00;
        3.1816722979531573e+01   5.8917529889855743e+01  -3.5272127849600997e+02  -3.1816722979531573e+01  -5.8917529889855743e+01   3.5272127849600997e+02   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00;
        3.5113004928555353e+02  -4.3573978441589354e+01  -3.1816722979531573e+01  -1.3556671476971078e+03   1.3185933449564033e+02   1.0092116565621727e+02   7.0226009857110705e+02  -8.7147956883178708e+01  -6.3633445959063145e+01   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   3.0227699984044705e+02  -1.1373991708722637e+00  -5.4709967176225547e+00;
       -4.3573978441589354e+01   3.5377814658607412e+02  -5.8917529889855743e+01   1.3185933449564033e+02  -1.3531674012165354e+03   1.7296810353963031e+02  -8.7147956883178708e+01   7.0755629317214823e+02  -1.1783505977971149e+02   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -1.1373991708722739e+00   2.9183296145831315e+02   3.7844861299369055e+00;
       -3.1816722979531573e+01  -5.8917529889855743e+01   3.5272127849600997e+02   1.0092116565621727e+02   1.7296810353963031e+02  -1.3538611528970828e+03  -6.3633445959063145e+01  -1.1783505977971149e+02   7.0544255699201995e+02   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -5.4709967176225582e+00   3.7844861299369024e+00   2.9569731740905274e+02;
        0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   7.0226009857110705e+02  -8.7147956883178708e+01  -6.3633445959063145e+01  -1.4045201971422141e+03   1.7429591376635742e+02   1.2726689191812629e+02   7.0226009857110705e+02  -8.7147956883178708e+01  -6.3633445959063145e+01   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00;
        0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -8.7147956883178708e+01   7.0755629317214823e+02  -1.1783505977971149e+02   1.7429591376635742e+02  -1.4151125863442965e+03   2.3567011955942297e+02  -8.7147956883178708e+01   7.0755629317214823e+02  -1.1783505977971149e+02   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00;
        0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -6.3633445959063145e+01  -1.1783505977971149e+02   7.0544255699201995e+02   1.2726689191812629e+02   2.3567011955942297e+02  -1.4108851139840399e+03  -6.3633445959063145e+01  -1.1783505977971149e+02   7.0544255699201995e+02   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00;
        0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   7.0226009857110705e+02  -8.7147956883178708e+01  -6.3633445959063145e+01  -7.0226009857110705e+02   8.7147956883178708e+01   6.3633445959063145e+01   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00;
        0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -8.7147956883178708e+01   7.0755629317214823e+02  -1.1783505977971149e+02   8.7147956883178708e+01  -7.0755629317214823e+02   1.1783505977971149e+02   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00;
        0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -6.3633445959063145e+01  -1.1783505977971149e+02   7.0544255699201995e+02   6.3633445959063145e+01   1.1783505977971149e+02  -7.0544255699201995e+02   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00;
        0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   3.0227699984044705e+02  -1.1373991708722637e+00  -5.4709967176225547e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -3.0227699984044705e+02   1.1373991708722637e+00   5.4709967176225547e+00;
        0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -1.1373991708722739e+00   2.9183296145831315e+02   3.7844861299369055e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   1.1373991708722739e+00  -2.9183296145831315e+02  -3.7844861299369055e+00;
        0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -5.4709967176225582e+00   3.7844861299369024e+00   2.9569731740905274e+02   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   5.4709967176225582e+00  -3.7844861299369024e+00  -2.9569731740905274e+02];
P = [  -0.0000000000000000e+00;
       -0.0000000000000000e+00;
       -0.0000000000000000e+00;
       -0.0000000000000000e+00;
       -0.0000000000000000e+00;
       -0.0000000000000000e+00;
       -3.5999999999999999e-01;
       -2.8799999999999998e-01;
       -4.1999999999999998e-01;
       -5.7599999999999996e-01;
       -4.8000000000000001e-02;
       -4.7999999999999998e-01;
       -4.3200000000000000e-01;
       -2.8799999999999998e-01;
       -3.5999999999999999e-01];
Q = [  -0.0000000000000000e+00;
       -0.0000000000000000e+00;
       -0.0000000000000000e+00;
       -0.0000000000000000e+00;
       -0.0000000000000000e+00;
       -0.0000000000000000e+00;
       -2.1600000000000000e-01;
       -1.9200000000000000e-01;
       -2.6400000000000001e-01;
       -4.3200000000000000e-01;
       -3.3599999999999998e-02;
       -2.9999999999999999e-01;
       -2.8799999999999998e-01;
       -1.9200000000000000e-01;
       -2.3999999999999999e-01];
Y = G+1j*B;
% Voltage initilization
V    = zeros(15,1);
V(1) = 1.00;
V(2) = 1.00*exp(1j*4*pi/3);
V(3) = 1.00*exp(1j*2*pi/3);

Pdg  = zeros(15,1);
Qdg  = zeros(15,1);

V(4:15)     = x(1:12)+1j*x(13:24);

% Current calculation
I    = Y*V;
S    = V.*conj(I);
Psp  = real(S);
Qsp  = imag(S);

Pdg([7,15]) = Psp([7,15]) - P([7,15]);
Qdg([7,15]) = Qsp([7,15]) - Q([7,15]);
x_origin = [x,Pdg([7,15])',Qdg([7,15])']; 

delP = Psp-Pdg-P;
delQ = Qsp-Qdg-Q;

% Objective calculation
f(1) = sum(Qsp);
f(2) = sum(Psp);
h = [delP(4:15)',delQ(4:15)'];

origin_result = {x_origin,f,h};
end
