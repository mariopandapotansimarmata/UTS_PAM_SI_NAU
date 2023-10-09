import 'package:flutter/material.dart';
import 'package:sinau_uts_mobile/halaman_detail/bentuk.dart';
import 'package:sinau_uts_mobile/halaman_detail/lingkaran.dart';
import 'package:sinau_uts_mobile/halaman_detail/persegi.dart';
import 'package:sinau_uts_mobile/halaman_detail/segitiga.dart';
import 'package:sinau_uts_mobile/halaman_detail/trapesium.dart';

class BangunRuang extends StatelessWidget {
  const BangunRuang({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Column(children: [
          MenuCard(
            bangunRuang: Lingkaran(
                name: "Lingkaran",
                image:
                    "https://png.pngtree.com/png-clipart/20200801/ourlarge/pngtree-black-ring-png-image_2319174.png"),
          ),
          MenuCard(
              bangunRuang: Persegi(
            name: "Persegi",
            image:
                "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Regular_quadrilateral.svg/250px-Regular_quadrilateral.svg.png",
          )),
          MenuCard(
            bangunRuang: Trapesium(
                image:
                    "https://asset.kompas.com/crops/yXi9XRFFVBBRd22q4oYYxjVI8Io=/23x53:1748x1203/750x500/data/photo/2022/01/15/61e2a24016496.png",
                name: "Trapesium"),
          ),
          MenuCard(
              bangunRuang: Segitiga(
                  image:
                      "https://m.media-amazon.com/images/I/51G3hTAuN2L._AC_UF1000,1000_QL80_.jpg",
                  name: "Segitiga"))
        ]),
      ],
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard({super.key, required this.bangunRuang});
  final Bentuk bangunRuang;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return bangunRuang;
        }));
      },
      child: Card(
        child: Column(children: [
          SizedBox(
              height: 200, width: 200, child: Image.network(bangunRuang.image)),
          Text(bangunRuang.name)
        ]),
      ),
    );
  }
}
