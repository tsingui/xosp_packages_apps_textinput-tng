.class public final Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/SSLTools;
.super Ljava/lang/Object;
.source "SSLTools.java"


# static fields
.field public static final DO_NOT_VERIFY_HOST:Ljavax/net/ssl/HostnameVerifier;

.field private static final TAG:Ljava/lang/String; = "SSLTools"

.field private static m_sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 22
    new-instance v2, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/SSLTools$1;

    invoke-direct {v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/SSLTools$1;-><init>()V

    sput-object v2, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/SSLTools;->DO_NOT_VERIFY_HOST:Ljavax/net/ssl/HostnameVerifier;

    .line 33
    const/4 v2, 0x1

    new-array v1, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    new-instance v3, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/SSLTools$2;

    invoke-direct {v3}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/SSLTools$2;-><init>()V

    aput-object v3, v1, v2

    .line 50
    .local v1, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    sput-object v2, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/SSLTools;->m_sslContext:Ljavax/net/ssl/SSLContext;

    .line 51
    sget-object v2, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/SSLTools;->m_sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v3, v1, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SSLTools"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static getTrustAllSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/SSLTools;->m_sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method
