.class public Lcom/broadcom/bt/app/fm/rx/XmlSerial;
.super Ljava/lang/Object;
.source "XmlSerial.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CmdXmlSerializer"


# instance fields
.field private mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/XmlSerial;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/XmlSerial;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    return-void
.end method


# virtual methods
.method public flush(Lcom/broadcom/bt/app/fm/rx/ChannelHolder;)V
    .locals 10
    .parameter "holder"

    .prologue
    .line 54
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/data/com.broadcom.bt.app.fm.rx/files/channels.xml"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v5, newxmlfile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 56
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 58
    .local v2, fileos:Ljava/io/FileOutputStream;
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/XmlSerial;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "UTF-8"

    invoke-interface {v6, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 59
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/XmlSerial;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 61
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/XmlSerial;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 62
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/XmlSerial;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    const-string v8, "FMRadio"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/XmlSerial;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    const-string v8, "List"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, p1, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 67
    iget-object v6, p1, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/app/fm/rx/Station;

    .line 68
    .local v4, item:Lcom/broadcom/bt/app/fm/rx/Station;
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/XmlSerial;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    const-string v8, "Station"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/XmlSerial;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    const-string v8, "freq"

    iget-object v9, v4, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/XmlSerial;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    const-string v8, "name"

    iget-object v9, v4, Lcom/broadcom/bt/app/fm/rx/Station;->mName:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/XmlSerial;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    const-string v8, "Station"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    .end local v4           #item:Lcom/broadcom/bt/app/fm/rx/Station;
    :cond_0
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/XmlSerial;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    const-string v8, "List"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/XmlSerial;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    const-string v8, "Work"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/XmlSerial;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    const-string v8, "freq"

    iget v9, p1, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mWorkFreq:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/XmlSerial;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    const-string v8, "Work"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/XmlSerial;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    const-string v8, "FMRadio"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/XmlSerial;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 83
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/XmlSerial;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 84
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    .end local v2           #fileos:Ljava/io/FileOutputStream;
    .end local v3           #i:I
    .end local v5           #newxmlfile:Ljava/io/File;
    :goto_1
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/io/IOException;
    const-string v6, "CmdXmlSerializer"

    const-string v7, "Fail to save data to /data/data/com.broadcom.bt.app.fm.rx/files/channels.xml"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 91
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 93
    .local v1, e1:Ljava/lang/IllegalArgumentException;
    const-string v6, "CmdXmlSerializer"

    const-string v7, "Fail to save data to /data/data/com.broadcom.bt.app.fm.rx/files/channels.xmldue to illegal character."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method
