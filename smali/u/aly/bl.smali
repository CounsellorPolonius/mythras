.class public Lu/aly/bl;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bl$c;,
        Lu/aly/bl$d;,
        Lu/aly/bl$a;,
        Lu/aly/bl$b;,
        Lu/aly/bl$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch<",
        "Lu/aly/bl;",
        "Lu/aly/bl$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/bl$e;",
            "Lu/aly/ct;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Lu/aly/dl;

.field private static final j:Lu/aly/db;

.field private static final k:Lu/aly/db;

.field private static final l:Lu/aly/db;

.field private static final m:Lu/aly/db;

.field private static final n:Lu/aly/db;

.field private static final o:Lu/aly/db;

.field private static final p:Lu/aly/db;

.field private static final q:Ljava/util/Map;
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

.field private static final r:I = 0x0

.field private static final s:I = 0x1

.field private static final t:I = 0x2


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:J

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu/aly/bg;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu/aly/be;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lu/aly/bm;

.field private u:B

.field private v:[Lu/aly/bl$e;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 33
    new-instance v0, Lu/aly/dl;

    const-string v1, "Session"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bl;->i:Lu/aly/dl;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "id"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bl;->j:Lu/aly/db;

    .line 36
    new-instance v0, Lu/aly/db;

    const-string v1, "start_time"

    const/4 v4, 0x2

    const/16 v5, 0xa

    invoke-direct {v0, v1, v5, v4}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bl;->k:Lu/aly/db;

    .line 37
    new-instance v0, Lu/aly/db;

    const-string v1, "end_time"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v5, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bl;->l:Lu/aly/db;

    .line 38
    new-instance v0, Lu/aly/db;

    const-string v1, "duration"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bl;->m:Lu/aly/db;

    .line 39
    new-instance v0, Lu/aly/db;

    const-string v1, "pages"

    const/16 v6, 0xf

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bl;->n:Lu/aly/db;

    .line 40
    new-instance v0, Lu/aly/db;

    const-string v1, "locations"

    const/4 v7, 0x6

    invoke-direct {v0, v1, v6, v7}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bl;->o:Lu/aly/db;

    .line 41
    new-instance v0, Lu/aly/db;

    const-string v1, "traffic"

    const/16 v7, 0xc

    const/4 v8, 0x7

    invoke-direct {v0, v1, v7, v8}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bl;->p:Lu/aly/db;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bl;->q:Ljava/util/Map;

    .line 45
    sget-object v0, Lu/aly/bl;->q:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v8, Lu/aly/bl$b;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lu/aly/bl$b;-><init>(Lu/aly/bl$1;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lu/aly/bl;->q:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v8, Lu/aly/bl$d;

    invoke-direct {v8, v9}, Lu/aly/bl$d;-><init>(Lu/aly/bl$1;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bl$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 142
    sget-object v1, Lu/aly/bl$e;->a:Lu/aly/bl$e;

    new-instance v8, Lu/aly/ct;

    const-string v9, "id"

    new-instance v10, Lu/aly/cu;

    invoke-direct {v10, v2}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v8, v9, v3, v10}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lu/aly/bl$e;->b:Lu/aly/bl$e;

    new-instance v2, Lu/aly/ct;

    const-string v8, "start_time"

    new-instance v9, Lu/aly/cu;

    invoke-direct {v9, v5}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v8, v3, v9}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lu/aly/bl$e;->c:Lu/aly/bl$e;

    new-instance v2, Lu/aly/ct;

    const-string v8, "end_time"

    new-instance v9, Lu/aly/cu;

    invoke-direct {v9, v5}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v8, v3, v9}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lu/aly/bl$e;->d:Lu/aly/bl$e;

    new-instance v2, Lu/aly/ct;

    const-string v8, "duration"

    new-instance v9, Lu/aly/cu;

    invoke-direct {v9, v5}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v8, v3, v9}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lu/aly/bl$e;->e:Lu/aly/bl$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "pages"

    new-instance v5, Lu/aly/cv;

    new-instance v8, Lu/aly/cy;

    const-class v9, Lu/aly/bg;

    invoke-direct {v8, v7, v9}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v5, v6, v8}, Lu/aly/cv;-><init>(BLu/aly/cu;)V

    invoke-direct {v2, v3, v4, v5}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lu/aly/bl$e;->f:Lu/aly/bl$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "locations"

    new-instance v5, Lu/aly/cv;

    new-instance v8, Lu/aly/cy;

    const-class v9, Lu/aly/be;

    invoke-direct {v8, v7, v9}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v5, v6, v8}, Lu/aly/cv;-><init>(BLu/aly/cu;)V

    invoke-direct {v2, v3, v4, v5}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lu/aly/bl$e;->g:Lu/aly/bl$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "traffic"

    new-instance v5, Lu/aly/cy;

    const-class v6, Lu/aly/bm;

    invoke-direct {v5, v7, v6}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v4, v5}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bl;->h:Ljava/util/Map;

    .line 159
    const-class v0, Lu/aly/bl;

    sget-object v1, Lu/aly/bl;->h:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 137
    iput-byte v0, p0, Lu/aly/bl;->u:B

    const/4 v1, 0x3

    .line 138
    new-array v1, v1, [Lu/aly/bl$e;

    sget-object v2, Lu/aly/bl$e;->e:Lu/aly/bl$e;

    aput-object v2, v1, v0

    sget-object v0, Lu/aly/bl$e;->f:Lu/aly/bl$e;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bl$e;->g:Lu/aly/bl$e;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iput-object v1, p0, Lu/aly/bl;->v:[Lu/aly/bl$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lu/aly/bl;-><init>()V

    .line 172
    iput-object p1, p0, Lu/aly/bl;->a:Ljava/lang/String;

    .line 173
    iput-wide p2, p0, Lu/aly/bl;->b:J

    const/4 p1, 0x1

    .line 174
    invoke-virtual {p0, p1}, Lu/aly/bl;->b(Z)V

    .line 175
    iput-wide p4, p0, Lu/aly/bl;->c:J

    .line 176
    invoke-virtual {p0, p1}, Lu/aly/bl;->c(Z)V

    .line 177
    iput-wide p6, p0, Lu/aly/bl;->d:J

    .line 178
    invoke-virtual {p0, p1}, Lu/aly/bl;->d(Z)V

    return-void
.end method

.method public constructor <init>(Lu/aly/bl;)V
    .locals 4

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 137
    iput-byte v0, p0, Lu/aly/bl;->u:B

    const/4 v1, 0x3

    .line 138
    new-array v1, v1, [Lu/aly/bl$e;

    sget-object v2, Lu/aly/bl$e;->e:Lu/aly/bl$e;

    aput-object v2, v1, v0

    sget-object v0, Lu/aly/bl$e;->f:Lu/aly/bl$e;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bl$e;->g:Lu/aly/bl$e;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iput-object v1, p0, Lu/aly/bl;->v:[Lu/aly/bl$e;

    .line 185
    iget-byte v0, p1, Lu/aly/bl;->u:B

    iput-byte v0, p0, Lu/aly/bl;->u:B

    .line 186
    invoke-virtual {p1}, Lu/aly/bl;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p1, Lu/aly/bl;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bl;->a:Ljava/lang/String;

    .line 189
    :cond_0
    iget-wide v0, p1, Lu/aly/bl;->b:J

    iput-wide v0, p0, Lu/aly/bl;->b:J

    .line 190
    iget-wide v0, p1, Lu/aly/bl;->c:J

    iput-wide v0, p0, Lu/aly/bl;->c:J

    .line 191
    iget-wide v0, p1, Lu/aly/bl;->d:J

    iput-wide v0, p0, Lu/aly/bl;->d:J

    .line 192
    invoke-virtual {p1}, Lu/aly/bl;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    iget-object v1, p1, Lu/aly/bl;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/bg;

    .line 195
    new-instance v3, Lu/aly/bg;

    invoke-direct {v3, v2}, Lu/aly/bg;-><init>(Lu/aly/bg;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_1
    iput-object v0, p0, Lu/aly/bl;->e:Ljava/util/List;

    .line 199
    :cond_2
    invoke-virtual {p1}, Lu/aly/bl;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    iget-object v1, p1, Lu/aly/bl;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/be;

    .line 202
    new-instance v3, Lu/aly/be;

    invoke-direct {v3, v2}, Lu/aly/be;-><init>(Lu/aly/be;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 204
    :cond_3
    iput-object v0, p0, Lu/aly/bl;->f:Ljava/util/List;

    .line 206
    :cond_4
    invoke-virtual {p1}, Lu/aly/bl;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 207
    new-instance v0, Lu/aly/bm;

    iget-object p1, p1, Lu/aly/bl;->g:Lu/aly/bm;

    invoke-direct {v0, p1}, Lu/aly/bm;-><init>(Lu/aly/bm;)V

    iput-object v0, p0, Lu/aly/bl;->g:Lu/aly/bm;

    :cond_5
    return-void
.end method

.method static synthetic D()Lu/aly/dl;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bl;->i:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic E()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bl;->j:Lu/aly/db;

    return-object v0
.end method

.method static synthetic F()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bl;->k:Lu/aly/db;

    return-object v0
.end method

.method static synthetic G()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bl;->l:Lu/aly/db;

    return-object v0
.end method

.method static synthetic H()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bl;->m:Lu/aly/db;

    return-object v0
.end method

.method static synthetic I()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bl;->n:Lu/aly/db;

    return-object v0
.end method

.method static synthetic J()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bl;->o:Lu/aly/db;

    return-object v0
.end method

.method static synthetic K()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bl;->p:Lu/aly/db;

    return-object v0
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

    .line 519
    :try_start_0
    iput-byte v0, p0, Lu/aly/bl;->u:B

    .line 520
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/bl;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 522
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

    .line 510
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/bl;->b(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 512
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A()V
    .locals 1

    const/4 v0, 0x0

    .line 410
    iput-object v0, p0, Lu/aly/bl;->g:Lu/aly/bm;

    return-void
.end method

.method public B()Z
    .locals 1

    .line 415
    iget-object v0, p0, Lu/aly/bl;->g:Lu/aly/bm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lu/aly/bl;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 497
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/bl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_0
    iget-object v0, p0, Lu/aly/bl;->g:Lu/aly/bm;

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lu/aly/bl;->g:Lu/aly/bm;

    invoke-virtual {v0}, Lu/aly/bm;->j()V

    :cond_1
    return-void
.end method

.method public a(I)Lu/aly/bl$e;
    .locals 0

    .line 425
    invoke-static {p1}, Lu/aly/bl$e;->a(I)Lu/aly/bl$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lu/aly/bl;
    .locals 1

    .line 212
    new-instance v0, Lu/aly/bl;

    invoke-direct {v0, p0}, Lu/aly/bl;-><init>(Lu/aly/bl;)V

    return-object v0
.end method

.method public a(J)Lu/aly/bl;
    .locals 0

    .line 258
    iput-wide p1, p0, Lu/aly/bl;->b:J

    const/4 p1, 0x1

    .line 259
    invoke-virtual {p0, p1}, Lu/aly/bl;->b(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bl;
    .locals 0

    .line 234
    iput-object p1, p0, Lu/aly/bl;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lu/aly/bl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu/aly/bg;",
            ">;)",
            "Lu/aly/bl;"
        }
    .end annotation

    .line 342
    iput-object p1, p0, Lu/aly/bl;->e:Ljava/util/List;

    return-object p0
.end method

.method public a(Lu/aly/bm;)Lu/aly/bl;
    .locals 0

    .line 405
    iput-object p1, p0, Lu/aly/bl;->g:Lu/aly/bm;

    return-object p0
.end method

.method public a(Lu/aly/be;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lu/aly/bl;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/bl;->f:Ljava/util/List;

    .line 373
    :cond_0
    iget-object v0, p0, Lu/aly/bl;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lu/aly/bg;)V
    .locals 1

    .line 331
    iget-object v0, p0, Lu/aly/bl;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/bl;->e:Ljava/util/List;

    .line 334
    :cond_0
    iget-object v0, p0, Lu/aly/bl;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 429
    sget-object v0, Lu/aly/bl;->q:Ljava/util/Map;

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

    .line 249
    iput-object p1, p0, Lu/aly/bl;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(J)Lu/aly/bl;
    .locals 0

    .line 281
    iput-wide p1, p0, Lu/aly/bl;->c:J

    const/4 p1, 0x1

    .line 282
    invoke-virtual {p0, p1}, Lu/aly/bl;->c(Z)V

    return-object p0
.end method

.method public b(Ljava/util/List;)Lu/aly/bl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu/aly/be;",
            ">;)",
            "Lu/aly/bl;"
        }
    .end annotation

    .line 381
    iput-object p1, p0, Lu/aly/bl;->f:Ljava/util/List;

    return-object p0
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lu/aly/bl;->a(I)Lu/aly/bl$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lu/aly/bl;->a:Ljava/lang/String;

    const/4 v1, 0x0

    .line 218
    invoke-virtual {p0, v1}, Lu/aly/bl;->b(Z)V

    const-wide/16 v2, 0x0

    .line 219
    iput-wide v2, p0, Lu/aly/bl;->b:J

    .line 220
    invoke-virtual {p0, v1}, Lu/aly/bl;->c(Z)V

    .line 221
    iput-wide v2, p0, Lu/aly/bl;->c:J

    .line 222
    invoke-virtual {p0, v1}, Lu/aly/bl;->d(Z)V

    .line 223
    iput-wide v2, p0, Lu/aly/bl;->d:J

    .line 224
    iput-object v0, p0, Lu/aly/bl;->e:Ljava/util/List;

    .line 225
    iput-object v0, p0, Lu/aly/bl;->f:Ljava/util/List;

    .line 226
    iput-object v0, p0, Lu/aly/bl;->g:Lu/aly/bm;

    return-void
.end method

.method public b(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 433
    sget-object v0, Lu/aly/bl;->q:Ljava/util/Map;

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
    .locals 2

    .line 273
    iget-byte v0, p0, Lu/aly/bl;->u:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bl;->u:B

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lu/aly/bl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(J)Lu/aly/bl;
    .locals 0

    .line 304
    iput-wide p1, p0, Lu/aly/bl;->d:J

    const/4 p1, 0x1

    .line 305
    invoke-virtual {p0, p1}, Lu/aly/bl;->d(Z)V

    return-object p0
.end method

.method public c(Z)V
    .locals 2

    .line 296
    iget-byte v0, p0, Lu/aly/bl;->u:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bl;->u:B

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Lu/aly/bl;->a:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 319
    iget-byte v0, p0, Lu/aly/bl;->u:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bl;->u:B

    return-void
.end method

.method public e(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 357
    iput-object p1, p0, Lu/aly/bl;->e:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lu/aly/bl;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()J
    .locals 2

    .line 254
    iget-wide v0, p0, Lu/aly/bl;->b:J

    return-wide v0
.end method

.method public f(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 396
    iput-object p1, p0, Lu/aly/bl;->f:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lu/aly/bl;->a()Lu/aly/bl;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 420
    iput-object p1, p0, Lu/aly/bl;->g:Lu/aly/bm;

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 264
    iget-byte v0, p0, Lu/aly/bl;->u:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bl;->u:B

    return-void
.end method

.method public i()Z
    .locals 2

    .line 269
    iget-byte v0, p0, Lu/aly/bl;->u:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()J
    .locals 2

    .line 277
    iget-wide v0, p0, Lu/aly/bl;->c:J

    return-wide v0
.end method

.method public k()V
    .locals 2

    .line 287
    iget-byte v0, p0, Lu/aly/bl;->u:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bl;->u:B

    return-void
.end method

.method public l()Z
    .locals 2

    .line 292
    iget-byte v0, p0, Lu/aly/bl;->u:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public m()J
    .locals 2

    .line 300
    iget-wide v0, p0, Lu/aly/bl;->d:J

    return-wide v0
.end method

.method public n()V
    .locals 2

    .line 310
    iget-byte v0, p0, Lu/aly/bl;->u:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bl;->u:B

    return-void
.end method

.method public o()Z
    .locals 2

    .line 315
    iget-byte v0, p0, Lu/aly/bl;->u:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public p()I
    .locals 1

    .line 323
    iget-object v0, p0, Lu/aly/bl;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu/aly/bl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public q()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lu/aly/bg;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lu/aly/bl;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu/aly/bl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu/aly/bg;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lu/aly/bl;->e:Ljava/util/List;

    return-object v0
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Lu/aly/bl;->e:Ljava/util/List;

    return-void
.end method

.method public t()Z
    .locals 1

    .line 352
    iget-object v0, p0, Lu/aly/bl;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "id:"

    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-object v1, p0, Lu/aly/bl;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 445
    :cond_0
    iget-object v1, p0, Lu/aly/bl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "start_time:"

    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget-wide v1, p0, Lu/aly/bl;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "end_time:"

    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    iget-wide v1, p0, Lu/aly/bl;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "duration:"

    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    iget-wide v1, p0, Lu/aly/bl;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {p0}, Lu/aly/bl;->t()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    .line 461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pages:"

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget-object v1, p0, Lu/aly/bl;->e:Ljava/util/List;

    if-nez v1, :cond_1

    const-string v1, "null"

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 466
    :cond_1
    iget-object v1, p0, Lu/aly/bl;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 470
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lu/aly/bl;->y()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ", "

    .line 471
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "locations:"

    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    iget-object v1, p0, Lu/aly/bl;->f:Ljava/util/List;

    if-nez v1, :cond_3

    const-string v1, "null"

    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 476
    :cond_3
    iget-object v1, p0, Lu/aly/bl;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 480
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lu/aly/bl;->B()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ", "

    .line 481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "traffic:"

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget-object v1, p0, Lu/aly/bl;->g:Lu/aly/bm;

    if-nez v1, :cond_5

    const-string v1, "null"

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 486
    :cond_5
    iget-object v1, p0, Lu/aly/bl;->g:Lu/aly/bm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_3
    const-string v1, ")"

    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    .line 362
    iget-object v0, p0, Lu/aly/bl;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu/aly/bl;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public v()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lu/aly/be;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lu/aly/bl;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu/aly/bl;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu/aly/be;",
            ">;"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lu/aly/bl;->f:Ljava/util/List;

    return-object v0
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    .line 386
    iput-object v0, p0, Lu/aly/bl;->f:Ljava/util/List;

    return-void
.end method

.method public y()Z
    .locals 1

    .line 391
    iget-object v0, p0, Lu/aly/bl;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Lu/aly/bm;
    .locals 1

    .line 401
    iget-object v0, p0, Lu/aly/bl;->g:Lu/aly/bm;

    return-object v0
.end method
