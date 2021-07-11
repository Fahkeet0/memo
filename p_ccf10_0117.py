import pickle
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import use
use('Agg')


if __name__=="__main__":
    namelist=[]
    with open("./tmp20107.csv","r") as f:
        for fline in f:
            namelist.append(fline.split("\t"))
    namelist=namelist[0]
    namelist[59]=namelist[59].strip("\n")
    c_num=np.load("./num_chromosome.npy")
    cut_num=[0]
    tmp=1
    for i in range(len(c_num)):
        if c_num[i]!=tmp:
            cut_num.append(i)
            tmp=c_num[i]
    cut_num.append(len(c_num))

    for num in range(1): #60
        #with open("./out_all0109/{}.pickle".format(num),"rb") as f:
        with open("./out_all0109/52.pickle".format(num), "rb") as f:
            x=pickle.load(f)
        x=np.array(x)
        # x=np.where(x==0,1,x)
        # if x.min()==0:
        #     print()
        x=np.log10(x)*-1
        y=np.arange(0,len(x))

        plt.style.use('dark_background')
        fig = plt.figure()#(figsize=(16.0, 8.0))
        ax = fig.add_subplot(1,1,1)
        ax.grid(color="#FFFFFF",alpha=0.3,linestyle = "--")
        ax.spines['right'].set_color("#FFFFFF")
        ax.spines['top'].set_color("#FFFFFF")
        ax.spines['left'].set_color("#FFFFFF")
        ax.spines['bottom'].set_color("#FFFFFF")
        ax.tick_params(colors='#FFFFFF')
        ax.set_xlabel('SNP',fontsize=13)
        ax.set_ylabel('-log10(p value)',fontsize=14)
        ax.set_title("local {}".format(namelist[52]),fontsize=18)
        # for i in range(len(cut_num)-1):
        for _ in range(1):
            i=3
            if i%2==0:
                co="#582AFF"
            else:
                co="#2F8ED3"
            # ax.scatter(y[cut_num[i]:cut_num[i+1]], x[cut_num[i]:cut_num[i+1]], c=co, s=15, alpha=1)
            ax.scatter(y[133350:133500], x[133350:133500], c=co, s=15, alpha=1)
        # fig.show()
        # fig.savefig('./out1222/60_A_Ci_ave10.png')
        fig.savefig('./new_out0109/local_0124.png')
