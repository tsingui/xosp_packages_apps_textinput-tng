.class final enum Lcom/neovisionaries/i18n/CountryCode$4;
.super Lcom/neovisionaries/i18n/CountryCode;
.source "CountryCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neovisionaries/i18n/CountryCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/neovisionaries/i18n/CountryCode$Assignment;)V
    .locals 8
    .param p3, "x0"    # Ljava/lang/String;
    .param p4, "x1"    # Ljava/lang/String;
    .param p5, "x2"    # I
    .param p6, "x3"    # Lcom/neovisionaries/i18n/CountryCode$Assignment;

    .prologue
    .line 601
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/neovisionaries/i18n/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/neovisionaries/i18n/CountryCode$Assignment;Lcom/neovisionaries/i18n/CountryCode$1;)V

    return-void
.end method


# virtual methods
.method public toLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 606
    sget-object v0, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    return-object v0
.end method
