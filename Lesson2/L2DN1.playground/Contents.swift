enum CurrencyType {
    case Eur, Usd, Gbp, Invalid;
}

class Converter {
    static func convert (value:Double, startCurrency:CurrencyType, targetCurrency:CurrencyType) -> (Double, CurrencyType) {
        switch(startCurrency,targetCurrency){
        case (CurrencyType.Eur,CurrencyType.Usd):
            return (value*1.13117,targetCurrency);
        case (CurrencyType.Eur,CurrencyType.Gbp):
            return (value*0.780625994,targetCurrency);
        case (CurrencyType.Usd,CurrencyType.Gbp):
            return (value*0.69010493,targetCurrency);
        case (CurrencyType.Usd,CurrencyType.Eur):
            return (value*0.884040418,targetCurrency);
        case (CurrencyType.Gbp,CurrencyType.Eur):
            return (value*1.28102319,targetCurrency);
        case (CurrencyType.Gbp,CurrencyType.Usd):
            return (value*1.449055,targetCurrency);
        default:
            return (-1,CurrencyType.Invalid);
        }
    }
}

print(Converter.convert(5000, startCurrency: CurrencyType.Usd, targetCurrency: CurrencyType.Eur))
print(Converter.convert(5000, startCurrency: CurrencyType.Gbp, targetCurrency: CurrencyType.Eur))
print(Converter.convert(5000, startCurrency: CurrencyType.Eur, targetCurrency: CurrencyType.Usd))