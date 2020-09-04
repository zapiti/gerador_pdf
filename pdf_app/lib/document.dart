/*
 * Copyright (C) 2017, David PHAM-VAN <dev.nfet.net@gmail.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// ignore_for_file: always_specify_types

import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future<Uint8List> generateDocument(PdfPageFormat format) async {
  final pw.Document doc = pw.Document();

  doc.addPage(pw.MultiPage(
      pageFormat:
          PdfPageFormat.letter.copyWith(marginBottom: 1.5 * PdfPageFormat.cm),
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      header: (pw.Context context) {
        if (context.pageNumber == 1) {
          return null;
        }
        return pw.Container(
            alignment: pw.Alignment.centerRight,
            margin: const pw.EdgeInsets.only(bottom: 3.0 * PdfPageFormat.mm),
            padding: const pw.EdgeInsets.only(bottom: 3.0 * PdfPageFormat.mm),
            decoration: const pw.BoxDecoration(
                border: pw.BoxBorder(
                    bottom: true, width: 0.5, color: PdfColors.grey)),
            child: pw.Text('Movimentações de carga',
                style: pw.Theme.of(context)
                    .defaultTextStyle
                    .copyWith(color: PdfColors.grey)));
      },
      footer: (pw.Context context) {
        return pw.Container(
            alignment: pw.Alignment.centerRight,
            margin: const pw.EdgeInsets.only(top: 1.0 * PdfPageFormat.cm),
            child: pw.Text(
                'Pagina ${context.pageNumber} de ${context.pagesCount}',
                style: pw.Theme.of(context)
                    .defaultTextStyle
                    .copyWith(color: PdfColors.grey)));
      },
      build: (pw.Context context) => <pw.Widget>[
            pw.Header(
                level: 0,
                child: pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: <pw.Widget>[
                      pw.Text('Relatório de Movimentações de Cargas', textScaleFactor: 2),
                    //  pw.PdfLogo()
                    ])),

            pw.Table.fromTextArray(context: context, data: const <List<String>>[
              <String>['Dt.Carga', "Remetente","Destinatário",'Origem', 'Destino',"Usuário","status"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
              <String>[ '31/08/2020', "Fertilizantes Tocantins","Osvaldo peres dos",'Araguari-MG', 'Araguari-Mg',"Nathan D","F"],
            ]),
            pw.Padding(padding: const pw.EdgeInsets.all(10)),
            pw.Paragraph(
                text:
                    'Total de registros 10.')
          ]));

  return doc.save();
}
