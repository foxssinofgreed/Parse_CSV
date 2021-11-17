#include <bits/stdc++.h>

using namespace std;

void read_record()
{

    // File pointer
    fstream fin;

    // Open an existing file
    fin.open("../Georgia_Country_RF.csv", ios::in);
    /*if(!fin.is_open())
    {
        std::cout << "File not found!\n";
        return 1;
    }*/

    // Get the roll number
    // of which the data is required
    long long int count;
    string delimiter = ",";
    string name, lastname, father, personal_number;

    /*cout << "Enter Personal Number: ";
    cin >> personal_number;*/
    cout << "Enter Name: ";
    cin >> name;
    cout << "Enter Last Name: ";
    cin >> lastname;
    cout << "Enter Father's Name: ";
    cin >> father;

    // Read the Data from the file
    // as String Vector
    vector<string> row;
    vector<string> fullRow;
    string line, word, temp;

    while(getline(fin, line)){
        line.erase(remove(line.begin(), line.end(), '"'), line.end());
        fullRow.push_back(line);

        count = fullRow.size();

        temp = fullRow[count - 1];

        size_t pos = 0;
        string token;
        while ((pos = temp.find(delimiter)) != string::npos) {
            token = temp.substr(0, pos);
            row.push_back(token);
            temp.erase(0, pos + delimiter.length());
        }
        if(/*row[0] == personal_number*/ row[2] == name && row[1] == lastname && row[3] == father){
            cout << "ID: " << count << ", ";
            cout << "Personal Number: " << row[0] << ", ";
            cout << "Name: " << row[1] << ", ";
            cout << "Last Name: " << row[2] << ", ";
            cout << "Father's Name: " << row[3] << ", ";
            cout << "Birth Date: " << row[4] << ", ";
            cout << "Address: " << row[9] << ", ";
            cout << "Region: " << row[10] << endl;
            //check++;
            //cout << fullRow[count - 1] << endl;
            //break;
            row.clear();
        }
        else row.clear();
    }

    //cout << fullRow[0] << endl;
}


int main() {
    read_record();

    return 0;
}
