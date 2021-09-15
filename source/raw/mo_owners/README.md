I retrieved mo_owners_m1894.pdf on September 14, 2021 at https://www.slcl.org/sites/default/files/mo_owners_m1894.pdf.

In order to convert the pdf into a flat-file, I exported the pdf as an excel file via Adobe Acrobate. I then manually extraneous rows corresponding the header text and extraneous empty columns, which I then saved as mo_owners_m1894.xlsx. Finally, I cleaned data to remove repetitious heading rows in clean.R. I also re-labeled the column names.

The resulting mo_owners_m1894.csv file has 5598 rows, the same number as the pdf. Note that pages 40, 121, and 142 have 37 rows as opposed to the usual 38, so the number of observations is the pdf is 15 + 37 * 3 + 38 * 144 = 5598.