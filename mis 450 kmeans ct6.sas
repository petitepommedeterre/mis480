ods noproctitle;

proc stdize data=SASHELP.CARS out=Work._std_ method=range;
    var MSRP Invoice MPG_City MPG_Highway;
run;

proc fastclus data=Work._std_ maxclusters=3 drift out=WORK.kmeans3;
    var MSRP Invoice MPG_City MPG_Highway;
run;

proc delete data=Work._std_;
run;
ods noproctitle;

proc stdize data=SASHELP.CARS out=Work._std_ method=range;
    var MSRP Invoice MPG_City MPG_Highway;
run;

proc fastclus data=Work._std_ maxclusters=4 drift out=WORK.kmeans4;
    var MSRP Invoice MPG_City MPG_Highway;
run;

proc delete data=Work._std_;
run;
ods noproctitle;

proc stdize data=SASHELP.CARS out=Work._std_ method=range;
    var MSRP Invoice MPG_City MPG_Highway;
run;

proc fastclus data=Work._std_ maxclusters=5 drift out=WORK.kmeans5;
    var MSRP Invoice MPG_City MPG_Highway;
run;

proc delete data=Work._std_;
run;
ods noproctitle;

proc stdize data=SASHELP.CARS out=Work._std_ method=range;
    var MSRP Invoice MPG_City MPG_Highway;
run;

proc fastclus data=Work._std_ maxclusters=6 drift out=WORK.kmeans6;
    var MSRP Invoice MPG_City MPG_Highway;
run;

proc delete data=Work._std_;
run;
ods noproctitle;

proc stdize data=SASHELP.CARS out=Work._std_ method=range;
    var MSRP Invoice MPG_City MPG_Highway;
run;

proc fastclus data=Work._std_ maxclusters=7 drift out=WORK.kmeans7;
    var MSRP Invoice MPG_City MPG_Highway;
run;

proc delete data=Work._std_;
run;
ods noproctitle;

proc stdize data=SASHELP.CARS out=Work._std_ method=range;
    var MSRP Invoice MPG_City MPG_Highway;
run;

proc fastclus data=Work._std_ maxclusters=8 drift out=WORK.kmeans8;
    var MSRP Invoice MPG_City MPG_Highway;
run;

proc delete data=Work._std_;
run;
ods noproctitle;

proc stdize data=SASHELP.CARS out=Work._std_ method=range;
    var MSRP Invoice MPG_City MPG_Highway;
run;

proc fastclus data=Work._std_ maxclusters=9 drift out=WORK.kmeans9;
    var MSRP Invoice MPG_City MPG_Highway;
run;

proc delete data=Work._std_;
run;
ods noproctitle;

proc stdize data=SASHELP.CARS out=Work._std_ method=range;
    var MSRP Invoice MPG_City MPG_Highway;
run;

proc fastclus data=Work._std_ maxclusters=10 drift out=WORK.kmeans10;
    var MSRP Invoice MPG_City MPG_Highway;
run;

proc delete data=Work._std_;
run;

* boxplots 
* kmeans 3

ods graphics / reset width=6.4in height=4.8in imagemap;

proc sgplot data=WORK.KMEANS3;
    title height=14pt "k=3";
    vbox MSRP / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS3;
    title height=14pt "k=3";
    vbox Invoice / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS3;
    title height=14pt "k=3";
    vbox MPG_City / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS3;
    title height=14pt "k=3";
    vbox MPG_Highway / category=CLUSTER;
    yaxis grid;
run;

proc sgplot data=WORK.KMEANS4;
    title height=14pt "k=4";
    vbox MSRP / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS4;
    title height=14pt "k=4";
    vbox Invoice / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS4;
    title height=14pt "k=4";
    vbox MPG_City / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS4;
    title height=14pt "k=4";
    vbox MPG_Highway / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS5;
    title height=14pt "k=5";
    vbox MSRP / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS5;
    title height=14pt "k=5";
    vbox Invoice / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS5;
    title height=14pt "k=5";
    vbox MPG_City / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS5;
    title height=14pt "k=5";
    vbox MPG_Highway / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS6;
    title height=14pt "k=6";
    vbox MSRP / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS6;
    title height=14pt "k=6";
    vbox Invoice / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS6;
    title height=14pt "k=6";
    vbox MPG_City / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS6;
    title height=14pt "k=6";
    vbox MPG_Highway / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS7;
    title height=14pt "k=7";
    vbox MSRP / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS7;
    title height=14pt "k=7";
    vbox Invoice / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS7;
    title height=14pt "k=7";
    vbox MPG_City / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS7;
    title height=14pt "k=7";
    vbox MPG_Highway / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS8;
    title height=14pt "k=8";
    vbox MSRP / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS8;
    title height=14pt "k=8";
    vbox Invoice / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS8;
    title height=14pt "k=8";
    vbox MPG_City / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS8;
    title height=14pt "k=8";
    vbox MPG_Highway / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS9;
    title height=14pt "k=9";
    vbox MSRP / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS9;
    title height=14pt "k=9";
    vbox Invoice / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS9;
    title height=14pt "k=9";
    vbox MPG_City / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS9;
    title height=14pt "k=9";
    vbox MPG_Highway / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS10;
    title height=14pt "k=10";
    vbox MSRP / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS10;
    title height=14pt "k=10";
    vbox Invoice / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS10;
    title height=14pt "k=10";
    vbox MPG_City / category=CLUSTER;
    yaxis grid;
run;
proc sgplot data=WORK.KMEANS10;
    title height=14pt "k=10";
    vbox MPG_Highway / category=CLUSTER;
    yaxis grid;
run;
ods graphics / reset;
