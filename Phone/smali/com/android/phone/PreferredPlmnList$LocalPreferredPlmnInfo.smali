.class public Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;
.super Ljava/lang/Object;
.source "PreferredPlmnList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PreferredPlmnList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalPreferredPlmnInfo"
.end annotation


# instance fields
.field public gsmAct:I

.field public gsmCompactAct:I

.field public id:Ljava/lang/String;

.field public index:I

.field public oper:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/PreferredPlmnList;

.field public utranAct:I


# direct methods
.method public constructor <init>(Lcom/android/phone/PreferredPlmnList;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/phone/PreferredPlmnList$LocalPreferredPlmnInfo;->this$0:Lcom/android/phone/PreferredPlmnList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
