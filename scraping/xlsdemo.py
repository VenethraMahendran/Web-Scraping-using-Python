import xlsxwriter
workbook = xlsxwriter.Workbook('mysheet.xlsx')
worksheet = workbook.add_worksheet()
worksheet.write('A1',"name")
worksheet.write('B1',"marks")
chart=workbook.add_chart({'type':'bar'})
chart.add_series({'values':'=Sheet1!$B$2:$B$30'})
worksheet.insert_chart('D1',chart)
workbook.close()
