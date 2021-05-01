.class Lu/aly/am$a;
.super Lu/aly/dq;
.source "ActivateMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dq<",
        "Lu/aly/am;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 221
    invoke-direct {p0}, Lu/aly/dq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/am$1;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Lu/aly/am$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/am;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 225
    invoke-virtual {p1}, Lu/aly/dg;->j()Lu/aly/dl;

    .line 228
    :goto_0
    invoke-virtual {p1}, Lu/aly/dg;->l()Lu/aly/db;

    move-result-object v0

    .line 229
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-nez v1, :cond_1

    .line 246
    invoke-virtual {p1}, Lu/aly/dg;->k()V

    .line 249
    invoke-virtual {p2}, Lu/aly/am;->e()Z

    move-result p1

    if-nez p1, :cond_0

    .line 250
    new-instance p1, Lu/aly/dh;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw p1

    .line 252
    :cond_0
    invoke-virtual {p2}, Lu/aly/am;->f()V

    return-void

    .line 232
    :cond_1
    iget-short v1, v0, Lu/aly/db;->c:S

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 242
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 234
    :cond_2
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    .line 235
    invoke-virtual {p1}, Lu/aly/dg;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/am;->a:J

    .line 236
    invoke-virtual {p2, v2}, Lu/aly/am;->a(Z)V

    goto :goto_1

    .line 238
    :cond_3
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    .line 244
    :goto_1
    invoke-virtual {p1}, Lu/aly/dg;->m()V

    goto :goto_0
.end method

.method public synthetic a(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 221
    check-cast p2, Lu/aly/am;

    invoke-virtual {p0, p1, p2}, Lu/aly/am$a;->b(Lu/aly/dg;Lu/aly/am;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/am;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 256
    invoke-virtual {p2}, Lu/aly/am;->f()V

    .line 258
    invoke-static {}, Lu/aly/am;->h()Lu/aly/dl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dl;)V

    .line 259
    invoke-static {}, Lu/aly/am;->i()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 260
    iget-wide v0, p2, Lu/aly/am;->a:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dg;->a(J)V

    .line 261
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 262
    invoke-virtual {p1}, Lu/aly/dg;->d()V

    .line 263
    invoke-virtual {p1}, Lu/aly/dg;->b()V

    return-void
.end method

.method public synthetic b(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 221
    check-cast p2, Lu/aly/am;

    invoke-virtual {p0, p1, p2}, Lu/aly/am$a;->a(Lu/aly/dg;Lu/aly/am;)V

    return-void
.end method
