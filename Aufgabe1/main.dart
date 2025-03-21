enum ToolMaterial {
  steel,
  plastic,
  wood,
  aluminum,
  titanium,
  carbonFiber,
  ceramic,
  rubber,
}

enum ToolFunction {
  cutting,
  measuring,
  screwing,
  drilling,
  hammering,
  welding,
  sanding,
  gripping,
}

enum HammerHeadShape {
  flat, // Flach (Standard-Schlosserhammer)
  rounded, // Abgerundet (z. B. Kugelhammer)
  pointed, // Spitz (z. B. Latthammer)
  wedge, // Keilförmig (z. B. Spalthammer)
  clawed, // Mit Klaue (z. B. Zimmermannshammer)
}

enum SawToothShape {
  straight, // Gerade Zähne
  curved, // Gebogene Zähne
  crossCut, // Querschnittzähne (für Holz)
  ripCut, // Längsschnittzähne (für Holz)
  fine, // Feine Zähne (für präzises Schneiden)
  coarse, // Grobe Zähne (für schnelleres Schneiden)
}

void main() {
  Hammer hammer1 = Hammer(
    HammerHeadShape.flat,
    ToolMaterial.wood,
    ToolFunction.hammering,
  );
  Saw saw1 = Saw(SawToothShape.fine, ToolMaterial.steel, ToolFunction.screwing);
}

class Tool {
  ToolMaterial material;
  ToolFunction function;

  Tool(this.material, this.function);
}

class Hammer extends Tool {
  HammerHeadShape headShape;

  Hammer(this.headShape, super.material, super.function);
}

class Saw extends Tool {
  SawToothShape toothShape;

  Saw(this.toothShape, super.material, super.function);
}
