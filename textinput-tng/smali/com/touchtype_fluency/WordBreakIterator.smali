.class public Lcom/touchtype_fluency/WordBreakIterator;
.super Ljava/lang/Object;
.source "WordBreakIterator.java"


# static fields
.field public static final DONE:I = -0x1


# instance fields
.field protected peer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 85
    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->forceInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-direct {p0}, Lcom/touchtype_fluency/WordBreakIterator;->createPeer()V

    .line 67
    return-void
.end method

.method private native createPeer()V
.end method

.method private native destroyPeer()V
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/touchtype_fluency/WordBreakIterator;->destroyPeer()V

    .line 80
    return-void
.end method

.method public native first()I
.end method

.method public native last()I
.end method

.method public native next()I
.end method

.method public native previous()I
.end method

.method public native setText(Ljava/lang/String;)V
.end method
