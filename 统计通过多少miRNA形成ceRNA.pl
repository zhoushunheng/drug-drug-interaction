#!/usr/bin/perl
sub sort_compute{
    open IN ,"$_[0]" or die "cannot open ";
    undef %hash;
    while(<IN>){
        s/[\r\n]//g;
    	my @tmp=split (/\t/,$_);
		my $row="$tmp[0]\t$tmp[2]";
    	if( exists($hash{$row}) ){
    	     $hash{$row}=$hash{$row}+1;
        }
    	else {
    	     $hash{$row}=1;
    	}
    }
    close IN;
    @key=keys %hash ; 
    undef @array;
    foreach $k(@key){
        push @array,[$hash{$k},$k];
    }
    @sort_matrix= sort { $b->[0] <=> $a->[0] } @array;
    open OUT,">$_[1]" or die "cannot open";
    for $i(0..$#sort_matrix){
        print OUT "$sort_matrix[$i][1]\t$sort_matrix[$i][0]\n";
    }
    close OUT;
}
mkdir("E:/课题再做一次/计算条件互信息后结果分析/统计通过多少miRNA形成ceRNA/")
&sort_compute("E:/课题再做一次/计算条件互信息后结果分析/结果/basal-like_CMI.txt","E:/课题再做一次/计算条件互信息后结果分析/统计通过多少miRNA形成ceRNA/basal-like_CMI.txt");
&sort_compute("E:/课题再做一次/计算条件互信息后结果分析/结果/HER2_CMI.txt","E:/课题再做一次/计算条件互信息后结果分析/统计通过多少miRNA形成ceRNA/HER2_CMI.txt");
&sort_compute("E:/课题再做一次/计算条件互信息后结果分析/结果/luminalA_CMI.txt","E:/课题再做一次/计算条件互信息后结果分析/统计通过多少miRNA形成ceRNA/luminalA_CMI.txt");
&sort_compute("E:/课题再做一次/计算条件互信息后结果分析/结果/luminalB_CMI.txt","E:/课题再做一次/计算条件互信息后结果分析/统计通过多少miRNA形成ceRNA/luminalB_CMI.txt");


