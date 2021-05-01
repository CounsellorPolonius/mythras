.class Lu/aly/bd$c;
.super Lu/aly/dr;
.source "Latent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dr<",
        "Lu/aly/bd;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 329
    invoke-direct {p0}, Lu/aly/dr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bd$1;)V
    .locals 0

    .line 329
    invoke-direct {p0}, Lu/aly/bd$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/bd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 333
    check-cast p1, Lu/aly/dm;

    .line 334
    iget v0, p2, Lu/aly/bd;->a:I

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(I)V

    .line 335
    iget-wide v0, p2, Lu/aly/bd;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(J)V

    return-void
.end method

.method public bridge synthetic a(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 329
    check-cast p2, Lu/aly/bd;

    invoke-virtual {p0, p1, p2}, Lu/aly/bd$c;->a(Lu/aly/dg;Lu/aly/bd;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/bd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 340
    check-cast p1, Lu/aly/dm;

    .line 341
    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bd;->a:I

    const/4 v0, 0x1

    .line 342
    invoke-virtual {p2, v0}, Lu/aly/bd;->a(Z)V

    .line 343
    invoke-virtual {p1}, Lu/aly/dm;->x()J

    move-result-wide v1

    iput-wide v1, p2, Lu/aly/bd;->b:J

    .line 344
    invoke-virtual {p2, v0}, Lu/aly/bd;->b(Z)V

    return-void
.end method

.method public bridge synthetic b(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 329
    check-cast p2, Lu/aly/bd;

    invoke-virtual {p0, p1, p2}, Lu/aly/bd$c;->b(Lu/aly/dg;Lu/aly/bd;)V

    return-void
.end method
