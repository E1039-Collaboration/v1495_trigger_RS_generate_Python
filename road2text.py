import math
import sys

def roadIdToHodoWord(roadid):
    h1 = str(int((abs(roadid)-1)/(16*16*16)) + 1)
    h2 = str(int((abs(roadid)-1)/(16*16))%16 + 1)
    h3 = str(int((abs(roadid)-1)/16)%16 + 1)
    h4 = str(int(abs(roadid)-1)%16 + 1)

    #print hodoword
    return h1.zfill(2), h2.zfill(2), h3.zfill(2), h4.zfill(2)


# reads roadset and generates and generates array of  roads as
# [roadid, hodo_pattern_word] elements
# returns roadset, array with num in each bin, indexed by bin
def readL1roadset(filename, polarity):
    road_patterns=[]
    #print"reading roadset for " + filename
    print("reading roadset for " + filename)

    road_patterns.append("roadID "+ "pol "+"H1X "+"H2X "+"H3X "+"H4X "+"signal "+"background")
    with open(filename) as fp:
        roads = fp.readlines()
        for rawroad in roads:
            hodo_pattern_word = ''
            rawroad = rawroad.strip().split()
            roadid = int(rawroad[0])
            h1,h2,h3,h4 = roadIdToHodoWord(roadid)
            print(roadid, h1,h2,h3,h4)

            road = str(roadid)+" "+polarity+" "+h1+" "+h2+" "+h3+" "+h4+" "+ "1" +" "+"1"
            road_patterns.append(road)
    return road_patterns


rs_directory = "/Users/ievgenlavrukhin/work/SpinQuest/Trigger_RoadSets/2024/136/"


def main():


    POS_Top = rs_directory+"pos_top.txt"
    NEG_Top = rs_directory+"neg_top.txt"
    POS_Bot = rs_directory+"pos_bot.txt"
    NEG_Bot = rs_directory+"neg_bot.txt"




    PTroads = readL1roadset(POS_Top, "+1")
    NTroads = readL1roadset(NEG_Top, "-1")

    PBroads = readL1roadset(POS_Bot, "+1")
    NBroads = readL1roadset(NEG_Bot, "-1")

    PT_fout = rs_directory+"mapping/"+"rs_LB_pos_top.txt"
    NT_fout = rs_directory+"mapping/"+"rs_LB_neg_top.txt"

    PB_fout = rs_directory+"mapping/"+"rs_LB_pos_bot.txt"
    NB_fout = rs_directory+"mapping/"+"rs_LB_neg_bot.txt"


    print (PTroads)
    print (NTroads)
    print (PBroads)
    print (NBroads)


    out_files=[PT_fout, NT_fout, PB_fout, NB_fout]
    rs_list=[PTroads,  NTroads, PBroads, NBroads]

    for i in range(len(out_files)):
        file = open(out_files[i], 'w')
        rs=rs_list[i]
        for item in rs:
            file.write(item + "\n")  # Write each element followed by a newline character
        file.close()




if __name__ == "__main__":
    main()
