.class public Lu/aly/cq;
.super Ljava/lang/Object;
.source "TSerializer.java"


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Lu/aly/ds;

.field private c:Lu/aly/dg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    new-instance v0, Lu/aly/da$a;

    invoke-direct {v0}, Lu/aly/da$a;-><init>()V

    invoke-direct {p0, v0}, Lu/aly/cq;-><init>(Lu/aly/di;)V

    return-void
.end method

.method public constructor <init>(Lu/aly/di;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lu/aly/cq;->a:Ljava/io/ByteArrayOutputStream;

    .line 47
    new-instance v0, Lu/aly/ds;

    iget-object v1, p0, Lu/aly/cq;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lu/aly/cq;->b:Lu/aly/ds;

    .line 68
    iget-object v0, p0, Lu/aly/cq;->b:Lu/aly/ds;

    invoke-interface {p1, v0}, Lu/aly/di;->a(Lu/aly/du;)Lu/aly/dg;

    move-result-object p1

    iput-object p1, p0, Lu/aly/cq;->c:Lu/aly/dg;

    return-void
.end method


# virtual methods
.method public a(Lu/aly/ch;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 97
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lu/aly/cq;->a(Lu/aly/ch;)[B

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 99
    :catch_0
    new-instance p1, Lu/aly/cn;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JVM DOES NOT SUPPORT ENCODING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/cn;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lu/aly/ch;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lu/aly/cq;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 82
    iget-object v0, p0, Lu/aly/cq;->c:Lu/aly/dg;

    invoke-interface {p1, v0}, Lu/aly/ch;->b(Lu/aly/dg;)V

    .line 83
    iget-object p1, p0, Lu/aly/cq;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public b(Lu/aly/ch;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lu/aly/cq;->a(Lu/aly/ch;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
