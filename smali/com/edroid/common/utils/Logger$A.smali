.class final Lcom/edroid/common/utils/Logger$A;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/edroid/common/utils/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "A"
.end annotation


# static fields
.field static s:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()V
    .locals 3

    .line 40
    const-class v0, Lcom/edroid/common/utils/Logger$A;

    sput-object v0, Lcom/edroid/common/utils/Logger$A;->s:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 42
    sput-boolean v0, Lcom/edroid/common/utils/Logger;->LOCAL_DEBUG_ON:Z

    .line 43
    invoke-static {v0}, Lcom/edroid/common/utils/Logger;->access$002(Z)Z

    .line 47
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const-string v1, "/data/local/tmp/debug"

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 48
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    .line 49
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x1

    .line 50
    sput-boolean v0, Lcom/edroid/common/utils/Logger;->LOCAL_DEBUG_ON:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :catch_0
    invoke-static {}, Lcom/edroid/common/utils/Logger;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    sget-boolean v0, Lcom/edroid/common/utils/Logger;->LOCAL_DEBUG_ON:Z

    invoke-static {v0}, Lcom/edroid/common/utils/Logger;->access$002(Z)Z

    :cond_0
    const-string v0, "Jok"

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is there a shit? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/edroid/common/utils/Logger$A;->s:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/edroid/common/utils/Logger;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/edroid/common/utils/Logger;->LOCAL_DEBUG_ON:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edroid/common/utils/Logger;->sd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
