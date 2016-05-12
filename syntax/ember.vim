" keywords
syn keyword emberNamespace App Ember Em DS RSVP computed inject run FEATURES streams Test

" emberjs classes

syn keyword emberClass ControllerMixin Application DefaultResolver Handlebars Compiler JavaScriptCompiler Checkbox Select
syn keyword emberClass TextArea TextField TextSupport HandlebarsBoundView Metamorph MetamorphView SimpleMetamorphView String
syn keyword emberClass Binding ComputedProperty Logger Instrumentation OrderedSet Map MapWithDefault Mixin platform Descriptor
syn keyword emberClass LinkView Location HashLocation HistoryLocation NoneLocation Route Router ReduceComputedProperty ArrayController
syn keyword emberClass Controller ObjectController RSVP Function ActionHandler Array Comparable Copyable Deferred Enumerable Evented
syn keyword emberClass Freezable MutableArray MutableEnumerable Observable PromiseProxyMixin SortableMixin TargetActionSupport ArrayProxy
syn keyword emberClass CoreObject EachProxy Namespace NativeArray Object ObjectProxy Set SubArray TrackedArray Error QUnitAdapter
syn keyword emberClass ViewTargetActionSupport EventDispatcher RenderBuffer CollectionView Component ContainerView CoreView View StateManager State

syn keyword emberClass Backburner ContainerProxyMixin ApplicationInstance BootOptions AriaRoleSupport ClassNamesSupport ContainerDebugAdapter
syn keyword emberClass DataAdapter Debug EmptyViewSupport HTMLBars Helper InjectedProperty InstrumentationSupport LegacyViewSupport LinkComponent
syn keyword emberClass ProxyMixin Service TemplateRenderingSupport VisibilitySupport _Metamorph _MetamorphView Stream Dependency Subscriber
syn keyword emberClass Libraries EventTarget Promise RegistryProxyMixin RoutingService

" emberjs functions
syn keyword emberMethod create extend map setupController beforeModel afterModel model renderTemplate get set hash all then catch on off one getProperties setProperties isEmpty isArray A K addListener addObserver aliasMethod assert assign bind cacheFor compare copy debug deprecate get getProperties getWithDefault guidFor isArray isBlank isEmpty isEqual isNone isPresent merge observer on removeListener removeObserver runInDebug sendEvent set setProperties tryInvoke trySet typeOf warn service controller

" ember data classes
syn keyword emberDataClass FixtureAdapter RESTAdapter Date AttributeChange RelationshipChange RelationshipChangeAdd RelationshipChangeRemove Mappable Model AdapterPopulatedRecordArray FilteredRecordArray ManyArray RecordArray Adapter RecordArrayManager Store
syn keyword emberDataClass ContainerInstanceCache AbortError Adapter AdapterError BooleanTransform BuildURLMixin
syn keyword emberDataClass DateTransform EmbeddedRecordsMixin Errors InvalidError JSONAPIAdapter JSONAPISerializer
syn keyword emberDataClass JSONSerializer NumberTransform PromiseArray PromiseManyArray PromiseObject
syn keyword emberDataClass RESTSerializer RootState Serializer Snapshot SnapshotRecordArray
syn keyword emberDataClass StringTransform TimeoutError Transform Inflector

" ember data methods
syn keyword emberDataMethod createRecord deleteRecord filter findAll findRecord hasRecordForId modelFor normalize peekAll peekRecord push pushPayload query queryRecord recordIsLoaded unloadAll unloadRecord
syn keyword emberDataMethod changedAttributes deleteRecord destroyRecord didDefineProperty eachAttribute eachRelatedType eachRelationship eachTransformedAttribute inverseFor reload rollbackAttributes save serialize toJSON typeForRelationship

" user classes

syn match emberUserClass '\v\i+(Route|Controller|View|Component|Mixin|Adapter|Transform)'

" highlighting

hi def link emberNamespace Define
hi def link emberClass Type
hi def link emberMethod Function
hi def link emberDataClass Define
hi def link emberDataMethod Function
hi def link emberUserClass Identifier

