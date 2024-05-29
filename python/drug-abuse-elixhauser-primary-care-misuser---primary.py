# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"1T0..00","system":"readv2"},{"code":"1V65.00","system":"readv2"},{"code":"1TD2.00","system":"readv2"},{"code":"1T8..00","system":"readv2"},{"code":"13c8.00","system":"readv2"},{"code":"1V01.00","system":"readv2"},{"code":"E259400","system":"readv2"},{"code":"1T32.00","system":"readv2"},{"code":"1V02.00","system":"readv2"},{"code":"1T93.00","system":"readv2"},{"code":"1T63.00","system":"readv2"},{"code":"9k5..00","system":"readv2"},{"code":"1T4..00","system":"readv2"},{"code":"1TD1.00","system":"readv2"},{"code":"1T22.00","system":"readv2"},{"code":"1TC..00","system":"readv2"},{"code":"1T21.00","system":"readv2"},{"code":"1TC3.00","system":"readv2"},{"code":"1T81.00","system":"readv2"},{"code":"1T01.00","system":"readv2"},{"code":"9HC5.00","system":"readv2"},{"code":"8IE7.00","system":"readv2"},{"code":"1T1..00","system":"readv2"},{"code":"1T6..00","system":"readv2"},{"code":"1T91.00","system":"readv2"},{"code":"1T50.00","system":"readv2"},{"code":"1T83.00","system":"readv2"},{"code":"1T92.00","system":"readv2"},{"code":"13cB.00","system":"readv2"},{"code":"1V2..00","system":"readv2"},{"code":"1T73.00","system":"readv2"},{"code":"1T10.00","system":"readv2"},{"code":"1T13.00","system":"readv2"},{"code":"1T61.00","system":"readv2"},{"code":"1T40.00","system":"readv2"},{"code":"1TD3.00","system":"readv2"},{"code":"13cH.00","system":"readv2"},{"code":"1T7..00","system":"readv2"},{"code":"1V26.00","system":"readv2"},{"code":"13c5.00","system":"readv2"},{"code":"9HC6.00","system":"readv2"},{"code":"1V22.00","system":"readv2"},{"code":"8Hh1.00","system":"readv2"},{"code":"1T41.00","system":"readv2"},{"code":"9k53.00","system":"readv2"},{"code":"1T62.00","system":"readv2"},{"code":"1T43.00","system":"readv2"},{"code":"13r4.00","system":"readv2"},{"code":"9HC4.00","system":"readv2"},{"code":"1T00.00","system":"readv2"},{"code":"13cF.00","system":"readv2"},{"code":"1V66.00","system":"readv2"},{"code":"1V0..00","system":"readv2"},{"code":"1T3..00","system":"readv2"},{"code":"1T...00","system":"readv2"},{"code":"1T9..00","system":"readv2"},{"code":"1T11.00","system":"readv2"},{"code":"9HC..00","system":"readv2"},{"code":"1T31.00","system":"readv2"},{"code":"1T52.00","system":"readv2"},{"code":"1T51.00","system":"readv2"},{"code":"67H3.00","system":"readv2"},{"code":"1T23.00","system":"readv2"},{"code":"1T53.00","system":"readv2"},{"code":"1V0E.00","system":"readv2"},{"code":"1TC0.00","system":"readv2"},{"code":"9k52.00","system":"readv2"},{"code":"1T2..00","system":"readv2"},{"code":"1TD0.00","system":"readv2"},{"code":"1T12.00","system":"readv2"},{"code":"1T80.00","system":"readv2"},{"code":"1TA..00","system":"readv2"},{"code":"13cM.00","system":"readv2"},{"code":"1T02.00","system":"readv2"},{"code":"9NdN.00","system":"readv2"},{"code":"9kS..00","system":"readv2"},{"code":"1T82.00","system":"readv2"},{"code":"9K4..00","system":"readv2"},{"code":"13c6.00","system":"readv2"},{"code":"8Hq..00","system":"readv2"},{"code":"1T03.00","system":"readv2"},{"code":"1T33.00","system":"readv2"},{"code":"1T60.00","system":"readv2"},{"code":"9k50.00","system":"readv2"},{"code":"1T42.00","system":"readv2"},{"code":"E25z.00","system":"readv2"},{"code":"1T20.00","system":"readv2"},{"code":"8HkF.00","system":"readv2"},{"code":"1T30.00","system":"readv2"},{"code":"677T.00","system":"readv2"},{"code":"1T90.00","system":"readv2"},{"code":"1TD..00","system":"readv2"},{"code":"1T5..00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('drug-abuse-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["drug-abuse-elixhauser-primary-care-misuser---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["drug-abuse-elixhauser-primary-care-misuser---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["drug-abuse-elixhauser-primary-care-misuser---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
