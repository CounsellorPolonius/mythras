.class public abstract Lu/aly/bx;
.super Ljava/lang/Object;
.source "URequest.java"


# static fields
.field protected static b:Ljava/lang/String; = "POST"

.field protected static c:Ljava/lang/String; = "GET"


# instance fields
.field protected d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lu/aly/bx;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a()Lorg/json/JSONObject;
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lu/aly/bx;->d:Ljava/lang/String;

    return-void
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lu/aly/bx;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lu/aly/bx;->d:Ljava/lang/String;

    return-object v0
.end method
