import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yemek_soyle_app/app/core/constants/color.dart';
import 'package:yemek_soyle_app/app/core/constants/icon_sizes.dart';
import 'package:yemek_soyle_app/app/core/utils/project_utility.dart';
import 'package:yemek_soyle_app/app/data/entity/sepet_yemekler.dart';
import 'package:yemek_soyle_app/app/ui/cubit/sepet_sayfa_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CartCardWidget extends StatefulWidget {
  const CartCardWidget({
    super.key,
    required this.yemek,
    required this.mWidth,
    required this.mHeight,
  });

  final SepetYemekler yemek;
  final double mWidth;
  final double mHeight;

  @override
  State<CartCardWidget> createState() => _cartCardWidgetState();
}

class _cartCardWidgetState extends State<CartCardWidget> {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Dismissible(
      key: Key(widget.yemek.id.toString()),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        //sepetten yemek sil
        context.read<SepetSayfaCubit>().sepettenSil(widget.yemek);
        context.read<SepetSayfaCubit>().sepettekiYemekleriYukle();
      },
      background: Container(
        decoration: ProjectUtility.cartDismissibleBoxDecoration,
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(right: 30),
          child: Icon(
            Icons.delete,
            color: AppColor.whiteColor,
            size: IconSizes.iconLarge,
          ),
        ),
      ),
      child: Card(
        color: AppColor.whiteColor,
        elevation: 3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.network(
                    "http://kasimadalan.pe.hu/yemekler/resimler/${widget.yemek.resim}",
                    width: widget.mWidth * 0.3,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.yemek.ad,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.w900)),
                    Text("${localizations.price}₺ ${widget.yemek.fiyat}",
                        style: Theme.of(context).textTheme.titleMedium),
                    Text("${localizations.count} ${widget.yemek.siparisAdet}",
                        style: Theme.of(context).textTheme.titleMedium),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        context.read<SepetSayfaCubit>().sepettenSil(widget.yemek);
                        context.read<SepetSayfaCubit>().sepettekiYemekleriYukle();
                      },
                      icon: Icon(
                        Icons.delete,
                        size: IconSizes.iconLarge,
                        color: AppColor.primaryColor,
                      )),
                  Text(
                    "₺${int.parse(widget.yemek.fiyat) * int.parse(widget.yemek.siparisAdet)}",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
