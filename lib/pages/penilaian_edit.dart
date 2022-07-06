
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:persebaya_selamanya/pages/penilain_service.dart';

class PenilaianEditPage extends StatefulWidget {
  const PenilaianEditPage({Key? key}) : super(key: key);

  @override
  State<PenilaianEditPage> createState() => _PenilaianEditPageState();
}

class _PenilaianEditPageState extends State<PenilaianEditPage> {
  final TextEditingController nilaiBaruController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Consumer<penilaianservice>(
          builder : (context, penilaian,child) => Column(
            children: [
              Text(penilaian.listPraktikan[penilaian.selectindex!]['nama']),
              const SizedBox(
                height: 20,
              ),
              const Text('input nilai baru'),
              TextFormField(
                controller: nilaiBaruController,
                keyboardType: TextInputType.number,
              ),
              TextButton(
                onPressed: () {
                  penilaian.updateNilai(penilaian.selectindex!, int.parse(nilaiBaruController.text));
                  Navigator.pop(context);
                },
                child: const Text('Simpan'),
              )
            ],
          )
          ),
          ),
    );
    
  }
}