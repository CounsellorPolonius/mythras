.class Lcom/mrpoid/mrplist/view/DownMrpDialog$Downloader;
.super Ljava/lang/Object;
.source "DownMrpDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/mrplist/view/DownMrpDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Downloader"
.end annotation


# instance fields
.field dstFile:Ljava/io/File;

.field mrp:Lcom/mrpoid/mrplist/moduls/Store$MrpItem;

.field final synthetic this$0:Lcom/mrpoid/mrplist/view/DownMrpDialog;


# direct methods
.method public constructor <init>(Lcom/mrpoid/mrplist/view/DownMrpDialog;Lcom/mrpoid/mrplist/moduls/Store$MrpItem;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog$Downloader;->this$0:Lcom/mrpoid/mrplist/view/DownMrpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog$Downloader;->mrp:Lcom/mrpoid/mrplist/moduls/Store$MrpItem;

    .line 99
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method dl()Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 149
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog$Downloader;->mrp:Lcom/mrpoid/mrplist/moduls/Store$MrpItem;

    iget-object v3, v3, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :try_start_2
    iget-object v1, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog$Downloader;->this$0:Lcom/mrpoid/mrplist/view/DownMrpDialog;

    iget-object v1, v1, Lcom/mrpoid/mrplist/view/DownMrpDialog;->hd:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v4, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 152
    invoke-virtual {p0, v3}, Lcom/mrpoid/mrplist/view/DownMrpDialog$Downloader;->streamToFile(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 159
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 163
    :catch_0
    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return v5

    :catch_2
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v1

    goto :goto_1

    :catch_3
    move-exception v3

    move-object v8, v3

    move-object v3, v1

    move-object v1, v8

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    goto :goto_1

    :catch_4
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v3

    .line 155
    :goto_0
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    iget-object v4, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog$Downloader;->this$0:Lcom/mrpoid/mrplist/view/DownMrpDialog;

    iget-object v4, v4, Lcom/mrpoid/mrplist/view/DownMrpDialog;->hd:Landroid/os/Handler;

    const/4 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u4e0b\u8f7d\u5931\u8d25\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 159
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 163
    :catch_5
    :try_start_7
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    return v0

    :catchall_2
    move-exception v0

    .line 159
    :goto_1
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 163
    :catch_7
    :try_start_9
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 165
    :catch_8
    throw v0
.end method

.method public run()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog$Downloader;->this$0:Lcom/mrpoid/mrplist/view/DownMrpDialog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->isDowning:Z

    .line 173
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/DownMrpDialog$Downloader;->dl()Z

    .line 174
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog$Downloader;->this$0:Lcom/mrpoid/mrplist/view/DownMrpDialog;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->isDowning:Z

    return-void
.end method

.method streamToFile(Ljava/io/InputStream;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mrpoid/mrplist/moduls/Common;->PATH_DOWN:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog$Downloader;->mrp:Lcom/mrpoid/mrplist/moduls/Store$MrpItem;

    iget-object v3, v3, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->md5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog$Downloader;->dstFile:Ljava/io/File;

    .line 104
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog$Downloader;->dstFile:Ljava/io/File;

    invoke-static {v0}, Lcom/edroid/common/utils/FileUtils;->checkParentPath(Ljava/io/File;)V

    const/4 v0, 0x0

    .line 111
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-float v1, v1

    .line 112
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 113
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog$Downloader;->dstFile:Ljava/io/File;

    invoke-direct {p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 115
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v0, 0x4000

    .line 116
    new-array v0, v0, [B

    const/4 v5, 0x0

    move-wide v6, v3

    const/4 v3, 0x0

    .line 118
    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_1

    .line 119
    invoke-virtual {p1, v0, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v3, v4

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    sub-long v10, v8, v6

    const-wide/16 v8, 0x64

    cmp-long v12, v10, v8

    if-lez v12, :cond_0

    .line 122
    iget-object v6, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog$Downloader;->this$0:Lcom/mrpoid/mrplist/view/DownMrpDialog;

    iget-object v6, v6, Lcom/mrpoid/mrplist/view/DownMrpDialog;->hd:Landroid/os/Handler;

    const/4 v7, 0x2

    int-to-float v8, v3

    div-float/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v6, v7, v4, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog$Downloader;->dstFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mrpoid/MrpUtils;->readMrpInfo(Ljava/lang/String;)Lcom/mrpoid/MrpUtils$MrpInfo;

    move-result-object v0

    .line 129
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/mrpoid/mrplist/moduls/Common;->PATH_DOWN:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/mrpoid/MrpUtils$MrpInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/mrpoid/MrpUtils$MrpInfo;->version:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".mrp"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog$Downloader;->dstFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 131
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog$Downloader;->mrp:Lcom/mrpoid/mrplist/moduls/Store$MrpItem;

    invoke-virtual {v0, v1}, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->saveDl(Ljava/io/File;)V

    .line 133
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog$Downloader;->this$0:Lcom/mrpoid/mrplist/view/DownMrpDialog;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->hd:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 134
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v13, v0

    move-object v0, p1

    move-object p1, v13

    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 139
    :catch_1
    throw v0
.end method
