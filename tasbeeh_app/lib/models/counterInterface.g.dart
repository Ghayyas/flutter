// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counterInterface.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CountListAdapter extends TypeAdapter<CountList> {
  @override
  final int typeId = 1;

  @override
  CountList read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CountList(
      fields[0] as int,
      fields[1] as String,
      fields[2] as int,
      fields[3] as double,
    );
  }

  @override
  void write(BinaryWriter writer, CountList obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.count)
      ..writeByte(3)
      ..write(obj.percentage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountListAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
