.class Lu/aly/bg$c;
.super Lu/aly/dr;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dr<",
        "Lu/aly/bg;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 335
    invoke-direct {p0}, Lu/aly/dr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bg$1;)V
    .locals 0

    .line 335
    invoke-direct {p0}, Lu/aly/bg$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/bg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 339
    check-cast p1, Lu/aly/dm;

    .line 340
    iget-object v0, p2, Lu/aly/bg;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 341
    iget-wide v0, p2, Lu/aly/bg;->b:J

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

    .line 335
    check-cast p2, Lu/aly/bg;

    invoke-virtual {p0, p1, p2}, Lu/aly/bg$c;->a(Lu/aly/dg;Lu/aly/bg;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/bg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 346
    check-cast p1, Lu/aly/dm;

    .line 347
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bg;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 348
    invoke-virtual {p2, v0}, Lu/aly/bg;->a(Z)V

    .line 349
    invoke-virtual {p1}, Lu/aly/dm;->x()J

    move-result-wide v1

    iput-wide v1, p2, Lu/aly/bg;->b:J

    .line 350
    invoke-virtual {p2, v0}, Lu/aly/bg;->b(Z)V

    return-void
.end method

.method public bridge synthetic b(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 335
    check-cast p2, Lu/aly/bg;

    invoke-virtual {p0, p1, p2}, Lu/aly/bg$c;->b(Lu/aly/dg;Lu/aly/bg;)V

    return-void
.end method
