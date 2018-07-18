import xlsxwriter
n=['hari','venethra','xysy']
workbook = xlsxwriter.Workbook('mysheet.xlsx')
worksheet=workbook.add_worksheet()
worksheet.write('A1',"name")
row=1
col=0
worksheet.write_column(row,col,n)
workbook.close()
