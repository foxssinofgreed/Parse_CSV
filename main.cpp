#include <bits/stdc++.h>

using namespace std;

void read_record() {

    // File pointer
    fstream fin;
    int id, count = 0;
    string delimiter = ",";
    string name, lastname, father, personal_number, sex, date;
    string line, word, temp;

    vector<string> row;
    vector<string> fullRow;

    // Open an existing file
    fin.open("/home/fox/CLionProjects/Parse_CSV/Georgia_Country_RF.csv", ios::in);
    if(fin.is_open()) {
        /*cout << "Enter Personal Number: ";
    cin >> personal_number;*/
        cout << "Enter Name: ";
        cin >> name;
        cout << "Enter Last Name: ";
        cin >> lastname;
        cout << "Enter Father's Name: ";
        cin >> father;
        cout << "Enter Date: ";
        cin >> date;
        cout << "Enter Sex: ";
        cin >> sex;
    }
    else cout << "File not found!\n";

    while(getline(fin, line)) {
        line.erase(remove(line.begin(), line.end(), '"'), line.end());
        fullRow.push_back(line);

        id = fullRow.size();

        temp = fullRow[id - 1];

        size_t pos = 0;
        string token;
        while ((pos = temp.find(delimiter)) != string::npos) {
            token = temp.substr(0, pos);
            row.push_back(token);
            temp.erase(0, pos + delimiter.length());
        }
        if(/*row[0] == personal_number*/ row[2] == name && row[1] == lastname && row[3] == father /*&& row[4] == date && row[7] == sex*/) {
            cout << "ID: " << "\x1B[32m" << id << "\033[0m\t\t, ";
            cout << "Personal Number: " << "\x1B[31m"  << row[0] << "\033[0m\t\t, ";
            cout << "Name: " << "\x1B[93m"  << row[2] << "\033[0m\t\t, ";
            cout << "Last Name: " << "\x1B[34m"  << row[1] << "\033[0m\t\t, ";
            cout << "Father's Name: " << "\x1B[35m"  << row[3] << "\033[0m\t\t, ";
            cout << "Birth Date: " << "\x1B[36m"  << row[4] << "\033[0m\t\t, ";
            cout << "Address: " << "\x1B[37m"  << row[9] << "\033[0m\t\t, ";
            if(row[7] == "1") {
                cout << "Region: " << "\x1B[35m"  << "Male" << "\033[0m\t\t" << endl;
            } else cout << "Region: " << "\x1B[93m"  << "Female" << "\033[0m\t\t" << endl;

            //check++;
            //cout << fullRow[id - 1] << endl;
            //break;
            count++;
            row.clear();
        }
        else row.clear();
    }

    cout << "People Found: " << "\x1B[91m" << count << "\033[0m\t\t";
}


int main() {
    read_record();

    return 0;
}
