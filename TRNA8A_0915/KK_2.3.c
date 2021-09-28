#include <stdio.h>
#include <stdlib.h>

void FileMasolas(char *file1, char *file2);
int main()
{
    FileMasolas("fp1.txt","fp2.txt");
    return 0;
}
void FileMasolas(char *file1, char *file2){
    FILE *fReadPointer, *fWritePointer;
    fReadPointer = fopen(file1, "r");
    fWritePointer = fopen(file2, "w");
    char line[201];
    while(!feof(fReadPointer)){
        fgets(line,100,fReadPointer);
        fprintf(fWritePointer, line);
    }
    fclose(fReadPointer);
    fclose(fWritePointer);
    printf("A masolas megtortent.");
}
