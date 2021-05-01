.class Lu/aly/cr$c;
.super Lu/aly/dr;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/cr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dr<",
        "Lu/aly/cr;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Lu/aly/dr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/cr$1;)V
    .locals 0

    .line 260
    invoke-direct {p0}, Lu/aly/cr$c;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 260
    check-cast p2, Lu/aly/cr;

    invoke-virtual {p0, p1, p2}, Lu/aly/cr$c;->b(Lu/aly/dg;Lu/aly/cr;)V

    return-void
.end method

.method public a(Lu/aly/dg;Lu/aly/cr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    const/4 v0, 0x0

    .line 264
    iput-object v0, p2, Lu/aly/cr;->c:Lu/aly/co;

    .line 265
    iput-object v0, p2, Lu/aly/cr;->b:Ljava/lang/Object;

    .line 266
    invoke-virtual {p1}, Lu/aly/dg;->v()S

    move-result v0

    .line 267
    invoke-virtual {p2, p1, v0}, Lu/aly/cr;->a(Lu/aly/dg;S)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lu/aly/cr;->b:Ljava/lang/Object;

    .line 268
    iget-object p1, p2, Lu/aly/cr;->b:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {p2, v0}, Lu/aly/cr;->b(S)Lu/aly/co;

    move-result-object p1

    iput-object p1, p2, Lu/aly/cr;->c:Lu/aly/co;

    :cond_0
    return-void
.end method

.method public synthetic b(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 260
    check-cast p2, Lu/aly/cr;

    invoke-virtual {p0, p1, p2}, Lu/aly/cr$c;->a(Lu/aly/dg;Lu/aly/cr;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/cr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 275
    invoke-virtual {p2}, Lu/aly/cr;->i()Lu/aly/co;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lu/aly/cr;->j()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p2, Lu/aly/cr;->c:Lu/aly/co;

    invoke-interface {v0}, Lu/aly/co;->a()S

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(S)V

    .line 279
    invoke-virtual {p2, p1}, Lu/aly/cr;->d(Lu/aly/dg;)V

    return-void

    .line 276
    :cond_1
    :goto_0
    new-instance p1, Lu/aly/dh;

    const-string p2, "Cannot write a TUnion with no set value!"

    invoke-direct {p1, p2}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw p1
.end method
