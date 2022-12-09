// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InvoiceDateModelAdapter extends TypeAdapter<InvoiceDateModel> {
  @override
  final int typeId = 2;

  @override
  InvoiceDateModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InvoiceDateModel(
      id: fields[0] as String,
      custemor: fields[1] as CustomerModel,
      items: (fields[2] as List).cast<ItemModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, InvoiceDateModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.custemor)
      ..writeByte(2)
      ..write(obj.items);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InvoiceDateModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
