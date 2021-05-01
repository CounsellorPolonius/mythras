.class public final Lcom/edroid/common/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/edroid/common/utils/Logger$A;
    }
.end annotation


# static fields
.field public static LOCAL_DEBUG_ON:Z

.field private static SHOW_LOG:Z


# instance fields
.field private debug:Z

.field private filepath:Ljava/lang/String;

.field private fw:Ljava/io/FileWriter;

.field private show:Z

.field private tag:Ljava/lang/String;

.field private tmpTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 65
    invoke-static {}, Lcom/edroid/common/utils/Logger$A;->a()V

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p0, p2}, Lcom/edroid/common/utils/Logger;->setDebug(Z)V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 111
    :goto_1
    invoke-virtual {p0, p1}, Lcom/edroid/common/utils/Logger;->setShow(Z)V

    .line 112
    invoke-virtual {p0, p3}, Lcom/edroid/common/utils/Logger;->setTag(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p4}, Lcom/edroid/common/utils/Logger;->setFilepath(Ljava/lang/String;)V

    return-void
.end method

.method public static a()V
    .locals 0

    .line 69
    invoke-static {}, Lcom/edroid/common/utils/Logger$A;->a()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 19
    sget-boolean v0, Lcom/edroid/common/utils/Logger;->SHOW_LOG:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 19
    sput-boolean p0, Lcom/edroid/common/utils/Logger;->SHOW_LOG:Z

    return p0
.end method

.method public static create()Lcom/edroid/common/utils/Logger;
    .locals 4

    .line 146
    new-instance v0, Lcom/edroid/common/utils/Logger;

    sget-boolean v1, Lcom/edroid/common/utils/Logger;->SHOW_LOG:Z

    sget-boolean v2, Lcom/edroid/common/utils/Logger;->LOCAL_DEBUG_ON:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/edroid/common/utils/Logger;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Class;)Lcom/edroid/common/utils/Logger;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/edroid/common/utils/Logger;"
        }
    .end annotation

    .line 150
    new-instance v0, Lcom/edroid/common/utils/Logger;

    sget-boolean v1, Lcom/edroid/common/utils/Logger;->SHOW_LOG:Z

    sget-boolean v2, Lcom/edroid/common/utils/Logger;->LOCAL_DEBUG_ON:Z

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/edroid/common/utils/Logger;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/edroid/common/utils/Logger;
    .locals 4

    .line 142
    new-instance v0, Lcom/edroid/common/utils/Logger;

    sget-boolean v1, Lcom/edroid/common/utils/Logger;->SHOW_LOG:Z

    sget-boolean v2, Lcom/edroid/common/utils/Logger;->LOCAL_DEBUG_ON:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/edroid/common/utils/Logger;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(ZLjava/lang/String;)Lcom/edroid/common/utils/Logger;
    .locals 2

    .line 138
    new-instance v0, Lcom/edroid/common/utils/Logger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, p1, v1}, Lcom/edroid/common/utils/Logger;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getLogger(Ljava/lang/Class;)Lcom/edroid/common/utils/Logger;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/edroid/common/utils/Logger;"
        }
    .end annotation

    .line 286
    invoke-static {p0}, Lcom/edroid/common/utils/Logger;->create(Ljava/lang/Class;)Lcom/edroid/common/utils/Logger;

    move-result-object p0

    return-object p0
.end method

.method public static sd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 268
    sget-boolean v0, Lcom/edroid/common/utils/Logger;->SHOW_LOG:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "null"

    .line 269
    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static se(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 280
    sget-boolean v0, Lcom/edroid/common/utils/Logger;->SHOW_LOG:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "null"

    .line 281
    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static si(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 262
    sget-boolean v0, Lcom/edroid/common/utils/Logger;->SHOW_LOG:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "null"

    .line 263
    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static sw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 274
    sget-boolean v0, Lcom/edroid/common/utils/Logger;->SHOW_LOG:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "null"

    .line 275
    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private tof(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/edroid/common/utils/Logger;->fw:Ljava/io/FileWriter;

    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object p1

    invoke-static {}, Lcom/edroid/common/utils/TimeUtils;->getTimeNow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/edroid/common/utils/Logger;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/edroid/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/edroid/common/utils/Logger;->show:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 211
    :goto_0
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/edroid/common/utils/Logger;->fw:Ljava/io/FileWriter;

    if-eqz v0, :cond_1

    const-string v0, "D"

    .line 213
    invoke-direct {p0, v0, p1, p2}, Lcom/edroid/common/utils/Logger;->tof(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public varargs dfm(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/edroid/common/utils/Logger;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/edroid/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/edroid/common/utils/Logger;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/edroid/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/edroid/common/utils/Logger;->show:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 219
    :goto_0
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/edroid/common/utils/Logger;->fw:Ljava/io/FileWriter;

    if-eqz v0, :cond_1

    const-string v0, "E"

    .line 221
    invoke-direct {p0, v0, p1, p2}, Lcom/edroid/common/utils/Logger;->tof(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/edroid/common/utils/Logger;->show:Z

    if-eqz v0, :cond_0

    .line 255
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    iget-object p3, p0, Lcom/edroid/common/utils/Logger;->fw:Ljava/io/FileWriter;

    if-eqz p3, :cond_0

    const-string p3, "E"

    .line 257
    invoke-direct {p0, p3, p1, p2}, Lcom/edroid/common/utils/Logger;->tof(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/edroid/common/utils/Logger;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/edroid/common/utils/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 188
    iget-boolean v0, p0, Lcom/edroid/common/utils/Logger;->show:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/edroid/common/utils/Logger;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/edroid/common/utils/Logger;->tmpTag:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/edroid/common/utils/Logger;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/edroid/common/utils/Logger;->show:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 203
    :goto_0
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/edroid/common/utils/Logger;->fw:Ljava/io/FileWriter;

    if-eqz v0, :cond_1

    const-string v0, "I"

    .line 205
    invoke-direct {p0, v0, p1, p2}, Lcom/edroid/common/utils/Logger;->tof(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public varargs ifm(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/edroid/common/utils/Logger;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isDebug()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/edroid/common/utils/Logger;->debug:Z

    return v0
.end method

.method public setDebug(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/edroid/common/utils/Logger;->debug:Z

    return-void
.end method

.method public setFilepath(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    .line 87
    iget-object p1, p0, Lcom/edroid/common/utils/Logger;->fw:Ljava/io/FileWriter;

    if-eqz p1, :cond_0

    .line 89
    :try_start_0
    iget-object p1, p0, Lcom/edroid/common/utils/Logger;->fw:Ljava/io/FileWriter;

    invoke-virtual {p1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/edroid/common/utils/Logger;->filepath:Ljava/lang/String;

    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/edroid/common/utils/Logger;->filepath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/edroid/common/utils/Logger;->filepath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 100
    :cond_2
    iput-object p1, p0, Lcom/edroid/common/utils/Logger;->filepath:Ljava/lang/String;

    .line 102
    :try_start_1
    invoke-static {p1}, Lcom/edroid/common/utils/FileUtils;->checkParentPath(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/edroid/common/utils/Logger;->fw:Ljava/io/FileWriter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setShow(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/edroid/common/utils/Logger;->show:Z

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/edroid/common/utils/Logger;->tag:Ljava/lang/String;

    .line 130
    iput-object p1, p0, Lcom/edroid/common/utils/Logger;->tmpTag:Ljava/lang/String;

    return-void
.end method

.method public setTagPerfix(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/edroid/common/utils/Logger;->tmpTag:Ljava/lang/String;

    iput-object p1, p0, Lcom/edroid/common/utils/Logger;->tag:Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/edroid/common/utils/Logger;->tag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/edroid/common/utils/Logger;->tag:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/edroid/common/utils/Logger;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/edroid/common/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/edroid/common/utils/Logger;->show:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 227
    :goto_0
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/edroid/common/utils/Logger;->fw:Ljava/io/FileWriter;

    if-eqz v0, :cond_1

    const-string v0, "V"

    .line 229
    invoke-direct {p0, v0, p1, p2}, Lcom/edroid/common/utils/Logger;->tof(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/edroid/common/utils/Logger;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/edroid/common/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 234
    invoke-virtual {p0, p1, p2, v0}, Lcom/edroid/common/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 242
    iget-boolean v0, p0, Lcom/edroid/common/utils/Logger;->show:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/edroid/common/utils/Logger;->tag:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    if-eqz p2, :cond_1

    move-object v1, p2

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-static {v0, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    iget-object p3, p0, Lcom/edroid/common/utils/Logger;->fw:Ljava/io/FileWriter;

    if-eqz p3, :cond_2

    const-string p3, "W"

    .line 245
    invoke-direct {p0, p3, p1, p2}, Lcom/edroid/common/utils/Logger;->tof(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public we(Ljava/lang/Throwable;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/edroid/common/utils/Logger;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/edroid/common/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
