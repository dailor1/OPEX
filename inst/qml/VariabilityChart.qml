import QtQuick
import JASP.Controls

Form {
    ColumnsForm {
        numColumns: 2

        AvailableVariablesList {
            id: availableVariables
        }

        Group {
            title: qsTr("Variáveis do Projeto")

            AssignedVariablesList {
                name: "response"
                title: qsTr("Variável de Resposta (Y)")
                source: availableVariables
                maxAllowed: 1
                allowedDataTypes: ["scale"] 
            }

            AssignedVariablesList {
                name: "factors"
                title: qsTr("Fatores de Subagrupamento (X)")
                source: availableVariables
                allowedDataTypes: ["nominal", "ordinal"] 
                // Sem "maxAllowed", o usuário pode inserir N fatores
            }
        }
    }
}
