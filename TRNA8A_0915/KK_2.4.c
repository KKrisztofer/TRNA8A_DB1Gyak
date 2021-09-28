#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Auto{
    char rendszam[7];
    char tipus[30];
    int ar;
} Auto;

void Tarolas();
void Olvasas(int i);

int main()
{
    Tarolas();
    Olvasas(0);
    Olvasas(1);
    Olvasas(2);
    Olvasas(3);
    Olvasas(4);
    return 0;
}

void Tarolas(){
    Auto autok[5];
    strcpy(autok[0].rendszam, "ABC123");
    strcpy(autok[0].tipus, "Opel");
    autok[0].ar = 700000;

    strcpy(autok[1].rendszam, "XYZ456");
    strcpy(autok[1].tipus, "Suzuki");
    autok[1].ar = 300000;

    strcpy(autok[2].rendszam, "IJK789");
    strcpy(autok[2].tipus, "BMW");
    autok[2].ar = 1200000;

    strcpy(autok[3].rendszam, "PQR222");
    strcpy(autok[3].tipus, "Audi");
    autok[3].ar = 900000;

    strcpy(autok[4].rendszam, "NBR473");
    strcpy(autok[4].tipus, "Skoda");
    autok[4].ar = 250000;

    FILE *fPointer;
    fPointer = fopen("autok.dat", "wb");
    int i;
    for(i=0;i<sizeof(autok)/sizeof(Auto);i++){
        fwrite(&(autok[i]), sizeof(Auto),1,fPointer);
    }
    fclose(fPointer);
}
void Olvasas(int i){
    FILE *fPointer;
    fPointer = fopen("autok.dat", "rb");
    Auto iAuto;
    fseek(fPointer, i*sizeof(Auto), 0);
    fread(&iAuto, sizeof(Auto), 1, fPointer);
    printf("Rendszam: %s\n", iAuto.rendszam);
    printf("Tipus: %s\n", iAuto.tipus);
    printf("Ar: %d\n", iAuto.ar);
    printf("\n");
    fclose(fPointer);
}
void Olvasas(int i);
