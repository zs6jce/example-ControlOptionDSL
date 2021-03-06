/*
 * generated by Xtext 2.15.0-SNAPSHOT
 */
package org.xtext.example.expressiondsl.ide

import com.google.inject.Guice
import org.eclipse.xtext.util.Modules2
import org.xtext.example.expressiondsl.ControlDSLRuntimeModule
import org.xtext.example.expressiondsl.ControlDSLStandaloneSetup

/**
 * Initialization support for running Xtext languages as language servers.
 */
class ControlDSLIdeSetup extends ControlDSLStandaloneSetup {

	override createInjector() {
		Guice.createInjector(Modules2.mixin(new ControlDSLRuntimeModule, new ControlDSLIdeModule))
	}
	
}
