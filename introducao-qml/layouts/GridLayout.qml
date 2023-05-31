import QtQuick 2.15

/*
    O grid se comporta de maneira que distribui os elementos adicionados a ele pela linhas e colunas definidas no código,
    através das propriedades "rows" e "columns". Neste exemplo, o grid terá 3 colunas e 3 linhas.

    Ao adicionar elementos dentro desse grid, a ordem de preenchimento é: primeiro as linhasa, depois as colunas, ou seja,
    conforme os itens são adicionados, serão alocados um ao lado do outro até que seja atingido o limite de linhas definido,
    então passará para a linha de baixo e fará a mesma coisa.
*/

Grid {
    columns: 3
    rows: 3
    spacing: 8

    Rectangle {
        width: parent.width/3
        height: parent.height/3
        color: "red"
    }

    Rectangle {

        width: parent.width/3
        height: parent.height/3
        color: "blue"
    }

    Rectangle {

        width: parent.width/3
        height: parent.height/3
        color: "black"
    }

    Rectangle {

        width: parent.width/3
        height: parent.height/3
        color: "yellow"
    }

    Rectangle {

        width: parent.width/3
        height: parent.height/3
        color: "green"
    }

    Rectangle {

        width: parent.width/3
        height: parent.height/3
        color: "brown"
    }

    Rectangle {

        width: parent.width/3
        height: parent.height/3
        color: "#6A5ACD"
    }

    Rectangle {

        width: parent.width/3
        height: parent.height/3
        color: "#4169E1"
    }

    Rectangle {

        width: parent.width/3
        height: parent.height/3
        color: "#DAA520"
    }
}
