-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

pragma Ada_2022;

package MAVLink.V1.Common.Message is

   pragma Preelaborate;

   subtype Valid_Msg_Id is Msg_Id
     with Static_Predicate => Valid_Msg_Id in
       1   .. 2   |
       4   .. 8   |
       11  .. 11  |
       20  .. 32  |
       34  .. 51  |
       54  .. 55  |
       61  .. 67  |
       69  .. 70  |
       73  .. 77  |
       80  .. 87  |
       89  .. 93  |
       100 .. 144 |
       146 .. 147 |
       149 .. 149 |
       162 .. 162 |
       192 .. 192 |
       225 .. 225 |
       230 .. 235 |
       241 .. 254;

   function Image (Id : Valid_Msg_Id) return String is
     (case Id is
         when 1   => "1",
         when 2   => "2",
         when 4   => "4",
         when 5   => "5",
         when 6   => "6",
         when 7   => "7",
         when 8   => "8",
         when 11  => "11",
         when 20  => "20",
         when 21  => "21",
         when 22  => "22",
         when 23  => "23",
         when 24  => "24",
         when 25  => "25",
         when 26  => "26",
         when 27  => "27",
         when 28  => "28",
         when 29  => "29",
         when 30  => "30",
         when 31  => "31",
         when 32  => "32",
         when 34  => "34",
         when 35  => "35",
         when 36  => "36",
         when 37  => "37",
         when 38  => "38",
         when 39  => "39",
         when 40  => "40",
         when 41  => "41",
         when 42  => "42",
         when 43  => "43",
         when 44  => "44",
         when 45  => "45",
         when 46  => "46",
         when 47  => "47",
         when 48  => "48",
         when 49  => "49",
         when 50  => "50",
         when 51  => "51",
         when 54  => "54",
         when 55  => "55",
         when 61  => "61",
         when 62  => "62",
         when 63  => "63",
         when 64  => "64",
         when 65  => "65",
         when 66  => "66",
         when 67  => "67",
         when 69  => "69",
         when 70  => "70",
         when 73  => "73",
         when 74  => "74",
         when 75  => "75",
         when 76  => "76",
         when 77  => "77",
         when 80  => "80",
         when 81  => "81",
         when 82  => "82",
         when 83  => "83",
         when 84  => "84",
         when 85  => "85",
         when 86  => "86",
         when 87  => "87",
         when 89  => "89",
         when 90  => "90",
         when 91  => "91",
         when 92  => "92",
         when 93  => "93",
         when 100 => "100",
         when 101 => "101",
         when 102 => "102",
         when 103 => "103",
         when 104 => "104",
         when 105 => "105",
         when 106 => "106",
         when 107 => "107",
         when 108 => "108",
         when 109 => "109",
         when 110 => "110",
         when 111 => "111",
         when 112 => "112",
         when 113 => "113",
         when 114 => "114",
         when 115 => "115",
         when 116 => "116",
         when 117 => "117",
         when 118 => "118",
         when 119 => "119",
         when 120 => "120",
         when 121 => "121",
         when 122 => "122",
         when 123 => "123",
         when 124 => "124",
         when 125 => "125",
         when 126 => "126",
         when 127 => "127",
         when 128 => "128",
         when 129 => "129",
         when 130 => "130",
         when 131 => "131",
         when 132 => "132",
         when 133 => "133",
         when 134 => "134",
         when 135 => "135",
         when 136 => "136",
         when 137 => "137",
         when 138 => "138",
         when 139 => "139",
         when 140 => "140",
         when 141 => "141",
         when 142 => "142",
         when 143 => "143",
         when 144 => "144",
         when 146 => "146",
         when 147 => "147",
         when 149 => "149",
         when 162 => "162",
         when 192 => "192",
         when 225 => "225",
         when 230 => "230",
         when 231 => "231",
         when 232 => "232",
         when 233 => "233",
         when 234 => "234",
         when 235 => "235",
         when 241 => "241",
         when 242 => "242",
         when 243 => "243",
         when 244 => "244",
         when 245 => "245",
         when 246 => "246",
         when 247 => "247",
         when 248 => "248",
         when 249 => "249",
         when 250 => "250",
         when 251 => "251",
         when 252 => "252",
         when 253 => "253",
         when 254 => "254");

end MAVLink.V1.Common.Message;
