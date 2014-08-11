.class public Lcom/broadcom/bt/app/fm/rx/XmlParser;
.super Ljava/lang/Object;
.source "XmlParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FMRadioXmlParser"

.field private static final mDebug:Z = true


# instance fields
.field private mXmlFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

.field private mXmlParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/broadcom/bt/app/fm/rx/XmlParser;->mXmlFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 46
    iput-object v1, p0, Lcom/broadcom/bt/app/fm/rx/XmlParser;->mXmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 52
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/app/fm/rx/XmlParser;->mXmlFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 53
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/XmlParser;->mXmlFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 54
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/XmlParser;->mXmlFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/app/fm/rx/XmlParser;->mXmlParser:Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public parserXml(Lcom/broadcom/bt/app/fm/rx/ChannelHolder;)Z
    .locals 17
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const-string v11, "/data/data/com.broadcom.bt.app.fm.rx/files/channels.xml"

    .line 65
    .local v11, path:Ljava/lang/String;
    const/4 v6, 0x0

    .line 66
    .local v6, mTagRoot:Z
    const/4 v5, 0x0

    .line 67
    .local v5, mTagList:Z
    const/4 v7, 0x0

    .line 68
    .local v7, mTagStation:Z
    const/4 v8, 0x0

    .line 69
    .local v8, mTagWork:Z
    const/4 v13, 0x0

    .line 70
    .local v13, stat:Lcom/broadcom/bt/app/fm/rx/Station;
    const/4 v9, 0x0

    .line 72
    .local v9, mWorkFreq:I
    const-string v14, "FMRadioXmlParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Parse file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/broadcom/bt/app/fm/rx/XmlParser;->mXmlFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/broadcom/bt/app/fm/rx/XmlParser;->mXmlParser:Lorg/xmlpull/v1/XmlPullParser;

    if-nez v14, :cond_1

    .line 76
    :cond_0
    const/4 v14, 0x0

    .line 230
    :goto_0
    return v14

    .line 79
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/broadcom/bt/app/fm/rx/XmlParser;->mXmlParser:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v16, "UTF-8"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 80
    const/4 v2, 0x0

    .line 82
    .local v2, TagName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/broadcom/bt/app/fm/rx/XmlParser;->mXmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 85
    .local v3, eventType:I
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 233
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/broadcom/bt/app/fm/rx/XmlParser;->mXmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_1

    .line 89
    :pswitch_0
    const-string v14, "FMRadioXmlParser"

    const-string v15, "START_DOCUMENT"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 94
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/broadcom/bt/app/fm/rx/XmlParser;->mXmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 97
    const-string v14, "FMRadioXmlParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TagName: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v14, "FMRadio"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 101
    const/4 v6, 0x1

    .line 102
    goto :goto_2

    .line 105
    :cond_3
    const-string v14, "List"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 107
    const/4 v5, 0x1

    .line 108
    goto :goto_2

    .line 111
    :cond_4
    const-string v14, "Station"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 113
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/broadcom/bt/app/fm/rx/XmlParser;->mXmlParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string v16, "freq"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, freq:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 116
    .local v10, number:I
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    const v14, 0x128e0

    if-lt v10, v14, :cond_5

    const v14, 0x1a5e0

    if-ge v14, v10, :cond_6

    .line 118
    :cond_5
    const/4 v13, 0x0

    .line 119
    goto :goto_2

    .line 122
    :cond_6
    const/4 v7, 0x1

    .line 123
    new-instance v13, Lcom/broadcom/bt/app/fm/rx/Station;

    .end local v13           #stat:Lcom/broadcom/bt/app/fm/rx/Station;
    invoke-direct {v13}, Lcom/broadcom/bt/app/fm/rx/Station;-><init>()V

    .line 125
    .restart local v13       #stat:Lcom/broadcom/bt/app/fm/rx/Station;
    iput-object v4, v13, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/broadcom/bt/app/fm/rx/XmlParser;->mXmlParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/broadcom/bt/app/fm/rx/Station;->mName:Ljava/lang/String;

    .line 128
    const-string v14, "FMRadioXmlParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Station freq : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v13, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " name : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v13, Lcom/broadcom/bt/app/fm/rx/Station;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 133
    .end local v4           #freq:Ljava/lang/String;
    .end local v10           #number:I
    :cond_7
    const-string v14, "Work"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/broadcom/bt/app/fm/rx/XmlParser;->mXmlParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string v16, "freq"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 136
    .restart local v4       #freq:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 138
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    const v14, 0x128e0

    if-lt v9, v14, :cond_8

    const v14, 0x1a5e0

    if-ge v14, v9, :cond_9

    .line 140
    :cond_8
    const/4 v9, 0x0

    .line 141
    goto/16 :goto_2

    .line 144
    :cond_9
    const/4 v8, 0x1

    .line 145
    goto/16 :goto_2

    .line 151
    .end local v4           #freq:Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/broadcom/bt/app/fm/rx/XmlParser;->mXmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, TagContent:Ljava/lang/String;
    const-string v14, "FMRadioXmlParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TagContent: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 161
    const-string v14, "Station"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 163
    const-string v14, "FMRadioXmlParser"

    const-string v15, "Station"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 170
    .end local v1           #TagContent:Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/broadcom/bt/app/fm/rx/XmlParser;->mXmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 173
    const-string v14, "FMRadioXmlParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TagName: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v14, "FMRadio"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 177
    const-string v14, "FMRadioXmlParser"

    const-string v15, "FMRadio"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 181
    :cond_a
    const-string v14, "List"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 183
    const-string v14, "FMRadioXmlParser"

    const-string v15, "List"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 187
    :cond_b
    const-string v14, "Station"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    if-eqz v13, :cond_c

    .line 189
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    iget-object v15, v13, Lcom/broadcom/bt/app/fm/rx/Station;->mFreq:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->BinarySearch(Ljava/util/List;Ljava/lang/String;)I

    move-result v12

    .line 190
    .local v12, pos:I
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mStationList:Ljava/util/List;

    invoke-interface {v14, v12, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 191
    const-string v14, "FMRadioXmlParser"

    const-string v15, "Station"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 195
    .end local v12           #pos:I
    :cond_c
    const-string v14, "Work"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 197
    move-object/from16 v0, p1

    iput v9, v0, Lcom/broadcom/bt/app/fm/rx/ChannelHolder;->mWorkFreq:I

    goto/16 :goto_2

    .line 204
    :pswitch_4
    const-string v14, "FMRadioXmlParser"

    const-string v15, "END_DOCUMENT"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-nez v6, :cond_d

    .line 208
    const-string v14, "FMRadioXmlParser"

    const-string v15, "Failed to find tag: FMRadio"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 212
    :cond_d
    if-nez v5, :cond_e

    .line 214
    const-string v14, "FMRadioXmlParser"

    const-string v15, "Failed to find tag: List"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 218
    :cond_e
    if-nez v7, :cond_f

    .line 220
    const-string v14, "FMRadioXmlParser"

    const-string v15, "Failed to find tag: Station"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 224
    :cond_f
    if-nez v8, :cond_10

    .line 226
    const-string v14, "FMRadioXmlParser"

    const-string v15, "Failed to find tag: Work"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v14, "FMRadioXmlParser"

    const-string v15, "We ignore work freq"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_10
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
