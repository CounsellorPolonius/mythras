.class public Lcom/umeng/analytics/social/a;
.super Ljava/lang/RuntimeException;
.source "UMException.java"


# static fields
.field private static final b:J = -0x409fd386e36f10efL


# instance fields
.field protected a:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 16
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x1388

    .line 8
    iput v0, p0, Lcom/umeng/analytics/social/a;->a:I

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/umeng/analytics/social/a;->c:Ljava/lang/String;

    .line 17
    iput p1, p0, Lcom/umeng/analytics/social/a;->a:I

    .line 18
    iput-object p2, p0, Lcom/umeng/analytics/social/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x1388

    .line 8
    iput v0, p0, Lcom/umeng/analytics/social/a;->a:I

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/umeng/analytics/social/a;->c:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/umeng/analytics/social/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p2, 0x1388

    .line 8
    iput p2, p0, Lcom/umeng/analytics/social/a;->a:I

    const-string p2, ""

    .line 9
    iput-object p2, p0, Lcom/umeng/analytics/social/a;->c:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/umeng/analytics/social/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/umeng/analytics/social/a;->a:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/umeng/analytics/social/a;->c:Ljava/lang/String;

    return-object v0
.end method
