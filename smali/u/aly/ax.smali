.class public Lu/aly/ax;
.super Ljava/lang/Object;
.source "IdJournal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/ax$c;,
        Lu/aly/ax$d;,
        Lu/aly/ax$a;,
        Lu/aly/ax$b;,
        Lu/aly/ax$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch<",
        "Lu/aly/ax;",
        "Lu/aly/ax$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/ax$e;",
            "Lu/aly/ct;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lu/aly/dl;

.field private static final g:Lu/aly/db;

.field private static final h:Lu/aly/db;

.field private static final i:Lu/aly/db;

.field private static final j:Lu/aly/db;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lu/aly/do;",
            ">;",
            "Lu/aly/dp;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field private m:B

.field private n:[Lu/aly/ax$e;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 33
    new-instance v0, Lu/aly/dl;

    const-string v1, "IdJournal"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/ax;->f:Lu/aly/dl;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "domain"

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ax;->g:Lu/aly/db;

    .line 36
    new-instance v0, Lu/aly/db;

    const-string v1, "old_id"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ax;->h:Lu/aly/db;

    .line 37
    new-instance v0, Lu/aly/db;

    const-string v1, "new_id"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v3, v5}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ax;->i:Lu/aly/db;

    .line 38
    new-instance v0, Lu/aly/db;

    const-string v1, "ts"

    const/16 v5, 0xa

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ax;->j:Lu/aly/db;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ax;->k:Ljava/util/Map;

    .line 42
    sget-object v0, Lu/aly/ax;->k:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v6, Lu/aly/ax$b;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lu/aly/ax$b;-><init>(Lu/aly/ax$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lu/aly/ax;->k:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v6, Lu/aly/ax$d;

    invoke-direct {v6, v7}, Lu/aly/ax$d;-><init>(Lu/aly/ax$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ax$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 125
    sget-object v1, Lu/aly/ax$e;->a:Lu/aly/ax$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "domain"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Lu/aly/ax$e;->b:Lu/aly/ax$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "old_id"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v4, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lu/aly/ax$e;->c:Lu/aly/ax$e;

    new-instance v4, Lu/aly/ct;

    const-string v6, "new_id"

    new-instance v7, Lu/aly/cu;

    invoke-direct {v7, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v4, v6, v2, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lu/aly/ax$e;->d:Lu/aly/ax$e;

    new-instance v3, Lu/aly/ct;

    const-string v4, "ts"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v5}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v3, v4, v2, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/ax;->e:Ljava/util/Map;

    .line 134
    const-class v0, Lu/aly/ax;

    sget-object v1, Lu/aly/ax;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 120
    iput-byte v0, p0, Lu/aly/ax;->m:B

    const/4 v1, 0x1

    .line 121
    new-array v1, v1, [Lu/aly/ax$e;

    sget-object v2, Lu/aly/ax$e;->b:Lu/aly/ax$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lu/aly/ax;->n:[Lu/aly/ax$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lu/aly/ax;-><init>()V

    .line 146
    iput-object p1, p0, Lu/aly/ax;->a:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lu/aly/ax;->c:Ljava/lang/String;

    .line 148
    iput-wide p3, p0, Lu/aly/ax;->d:J

    const/4 p1, 0x1

    .line 149
    invoke-virtual {p0, p1}, Lu/aly/ax;->d(Z)V

    return-void
.end method

.method public constructor <init>(Lu/aly/ax;)V
    .locals 3

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 120
    iput-byte v0, p0, Lu/aly/ax;->m:B

    const/4 v1, 0x1

    .line 121
    new-array v1, v1, [Lu/aly/ax$e;

    sget-object v2, Lu/aly/ax$e;->b:Lu/aly/ax$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lu/aly/ax;->n:[Lu/aly/ax$e;

    .line 156
    iget-byte v0, p1, Lu/aly/ax;->m:B

    iput-byte v0, p0, Lu/aly/ax;->m:B

    .line 157
    invoke-virtual {p1}, Lu/aly/ax;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p1, Lu/aly/ax;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ax;->a:Ljava/lang/String;

    .line 160
    :cond_0
    invoke-virtual {p1}, Lu/aly/ax;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p1, Lu/aly/ax;->b:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ax;->b:Ljava/lang/String;

    .line 163
    :cond_1
    invoke-virtual {p1}, Lu/aly/ax;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p1, Lu/aly/ax;->c:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ax;->c:Ljava/lang/String;

    .line 166
    :cond_2
    iget-wide v0, p1, Lu/aly/ax;->d:J

    iput-wide v0, p0, Lu/aly/ax;->d:J

    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 350
    :try_start_0
    iput-byte v0, p0, Lu/aly/ax;->m:B

    .line 351
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/ax;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 353
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/ax;->b(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 343
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic q()Lu/aly/dl;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ax;->f:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic r()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ax;->g:Lu/aly/db;

    return-object v0
.end method

.method static synthetic s()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ax;->h:Lu/aly/db;

    return-object v0
.end method

.method static synthetic t()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ax;->i:Lu/aly/db;

    return-object v0
.end method

.method static synthetic u()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ax;->j:Lu/aly/db;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/ax$e;
    .locals 0

    .line 278
    invoke-static {p1}, Lu/aly/ax$e;->a(I)Lu/aly/ax$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lu/aly/ax;
    .locals 1

    .line 170
    new-instance v0, Lu/aly/ax;

    invoke-direct {v0, p0}, Lu/aly/ax;-><init>(Lu/aly/ax;)V

    return-object v0
.end method

.method public a(J)Lu/aly/ax;
    .locals 0

    .line 259
    iput-wide p1, p0, Lu/aly/ax;->d:J

    const/4 p1, 0x1

    .line 260
    invoke-virtual {p0, p1}, Lu/aly/ax;->d(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/ax;
    .locals 0

    .line 187
    iput-object p1, p0, Lu/aly/ax;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 282
    sget-object v0, Lu/aly/ax;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dg;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dp;

    invoke-interface {v0}, Lu/aly/dp;->b()Lu/aly/do;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/do;->b(Lu/aly/dg;Lu/aly/ch;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 202
    iput-object p1, p0, Lu/aly/ax;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lu/aly/ax;
    .locals 0

    .line 211
    iput-object p1, p0, Lu/aly/ax;->b:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lu/aly/ax;->a(I)Lu/aly/ax$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lu/aly/ax;->a:Ljava/lang/String;

    .line 176
    iput-object v0, p0, Lu/aly/ax;->b:Ljava/lang/String;

    .line 177
    iput-object v0, p0, Lu/aly/ax;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, v0}, Lu/aly/ax;->d(Z)V

    const-wide/16 v0, 0x0

    .line 179
    iput-wide v0, p0, Lu/aly/ax;->d:J

    return-void
.end method

.method public b(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 286
    sget-object v0, Lu/aly/ax;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dg;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dp;

    invoke-interface {v0}, Lu/aly/dp;->b()Lu/aly/do;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/do;->a(Lu/aly/dg;Lu/aly/ch;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 226
    iput-object p1, p0, Lu/aly/ax;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lu/aly/ax;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lu/aly/ax;
    .locals 0

    .line 235
    iput-object p1, p0, Lu/aly/ax;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 250
    iput-object p1, p0, Lu/aly/ax;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lu/aly/ax;->a:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 274
    iget-byte v0, p0, Lu/aly/ax;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/ax;->m:B

    return-void
.end method

.method public e()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lu/aly/ax;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lu/aly/ax;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lu/aly/ax;->a()Lu/aly/ax;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lu/aly/ax;->b:Ljava/lang/String;

    return-void
.end method

.method public i()Z
    .locals 1

    .line 221
    iget-object v0, p0, Lu/aly/ax;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lu/aly/ax;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lu/aly/ax;->c:Ljava/lang/String;

    return-void
.end method

.method public l()Z
    .locals 1

    .line 245
    iget-object v0, p0, Lu/aly/ax;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()J
    .locals 2

    .line 255
    iget-wide v0, p0, Lu/aly/ax;->d:J

    return-wide v0
.end method

.method public n()V
    .locals 2

    .line 265
    iget-byte v0, p0, Lu/aly/ax;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ax;->m:B

    return-void
.end method

.method public o()Z
    .locals 2

    .line 270
    iget-byte v0, p0, Lu/aly/ax;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public p()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lu/aly/ax;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'domain\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/ax;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_0
    iget-object v0, p0, Lu/aly/ax;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 333
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'new_id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/ax;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdJournal("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "domain:"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget-object v1, p0, Lu/aly/ax;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 298
    :cond_0
    iget-object v1, p0, Lu/aly/ax;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :goto_0
    invoke-virtual {p0}, Lu/aly/ax;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "old_id:"

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget-object v1, p0, Lu/aly/ax;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "null"

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 307
    :cond_1
    iget-object v1, p0, Lu/aly/ax;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    const-string v1, ", "

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "new_id:"

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v1, p0, Lu/aly/ax;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "null"

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 316
    :cond_3
    iget-object v1, p0, Lu/aly/ax;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, ", "

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ts:"

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    iget-wide v1, p0, Lu/aly/ax;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
